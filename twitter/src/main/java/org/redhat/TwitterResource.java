package org.redhat;

import java.awt.Dimension;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import com.kennycason.kumo.CollisionMode;
import com.kennycason.kumo.WordCloud;
import com.kennycason.kumo.WordFrequency;
import com.kennycason.kumo.bg.RectangleBackground;

import io.smallrye.reactive.messaging.annotations.Channel;
import io.smallrye.reactive.messaging.annotations.Emitter;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.conf.ConfigurationBuilder;

@Path("/twitter")
public class TwitterResource {

    @Inject
    KrakenConfig krakenConfig;

    Twitter twitter;

    @Inject
    @Channel("twitter")
    Emitter<TwitterUser> twitterUserEmitter;

    @PostConstruct
    public void setup() {
        ConfigurationBuilder cb = new ConfigurationBuilder()
                                      .setDebugEnabled(true)
                                      .setOAuthConsumerKey(krakenConfig.apiKey())
                                      .setOAuthConsumerSecret(krakenConfig.apiSecret())
                                      .setOAuthAccessToken(krakenConfig.accessToken())
                                      .setOAuthAccessTokenSecret(krakenConfig.accessSecret());
        twitter = new TwitterFactory(cb.build())
                      .getInstance();
    }

    @POST
    @Transactional
    @Produces(MediaType.TEXT_PLAIN)
    public String register(@FormParam("handle") String handle) {
        TwitterUser twitterUser = TwitterUser.find("handle", handle).firstResult();
        if (twitterUser == null) {
            try {
                User user = twitter.users().lookupUsers(handle).get(0);
                twitterUser = new TwitterUser(handle, user.getName(), user.getLocation(), user.get400x400ProfileImageURLHttps());
                twitterUser.persist();
                twitterUserEmitter.send(twitterUser);
            } catch (TwitterException e) {
                return "No record found by that name.";
            }
        }
        return String.format("welcome %s from %s", twitterUser.fullName, twitterUser.location);
    }

    @GET
    @Path("load")
    @Transactional
    @Produces(MediaType.TEXT_PLAIN)
    public String loadSpeakers() throws IOException, URISyntaxException {
        URI speakersCsvUri = getClass().getResource("/speakers.csv").toURI();
        TwitterUser.deleteAll();

        try (Stream<String> stream = Files.lines(FileSystems.getDefault().getPath(speakersCsvUri.getRawPath()))) {
            stream
                .map(line -> line.split(","))
                .filter(Objects::nonNull)
                .filter(lineArray -> lineArray.length > 2)
                .map(lineArray -> lineArray[2])
                .distinct()
                .map(handle -> getUser(TwitterUser.find("handle", handle).firstResult(), handle))
                .filter(Objects::nonNull)
                .map(user -> new TwitterUser(user.getScreenName(), user.getName(), user.getLocation(), user.get400x400ProfileImageURL()))
                .forEach(twitterUser -> {
                    twitterUser.persist();
                    System.out.println(
                        String.format(
                            "Loaded %s (%s) from %s",
                            twitterUser.fullName,
                            twitterUser.handle,
                            twitterUser.location
                        )
                    );
                    this.twitterUserEmitter.send(twitterUser);
                });
        }

        return "speakers loaded";
    }

    @GET
    @Path("speakers")
    @Transactional
    @Produces(MediaType.TEXT_PLAIN)
    public String speakerEvents() {
        TwitterUser.<TwitterUser>listAll()
            .forEach(this.twitterUserEmitter::send);

        return "speaker events fired";
    }

    @GET
    @Path("words")
    @Produces("image/png")
    public Response cloud() throws FileNotFoundException {
        final Dimension dimension = new Dimension(500, 500);
        final WordCloud wordCloud = new WordCloud(dimension, CollisionMode.PIXEL_PERFECT);
        wordCloud.setPadding(2);
        wordCloud.setBackground(new RectangleBackground(dimension));

        List<TwitterUser> list = TwitterUser.listAll();
        Map<String, java.util.List<TwitterUser>> collect = list.stream().collect(Collectors.groupingBy(t -> t.location));
        List<WordFrequency> frequencies = collect.entrySet().stream()
                                                 .map(e -> new WordFrequency(e.getKey(), e.getValue().size()))
                                                 .collect(Collectors.toList());

        wordCloud.build(frequencies);

        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        wordCloud.writeToStreamAsPNG(byteArrayOutputStream);

        ResponseBuilder response = Response.ok(byteArrayOutputStream.toByteArray());
        response.header("Content-Disposition",
            "attachment; filename=wordcloud.png");
        return response.build();

    }

    private User getUser(TwitterUser twitterUser, String handle) {
        User user = null;

        if (twitterUser == null) {
            try {
                user = this.twitter.users().lookupUsers(handle).get(0);
            }
            catch (TwitterException ignored) {

            }
        }

        return user;
    }
}
