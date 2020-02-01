package org.redhat;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.smallrye.reactive.messaging.annotations.Channel;
import io.smallrye.reactive.messaging.annotations.Emitter;
import twitter4j.Query;
import twitter4j.ResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.conf.ConfigurationBuilder;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/twitter")
public class TwitterResource {

    @Inject
    KrakenConfig krakenConfig;

    Twitter twitter;

    @Inject
    @Channel("twitter")
    Emitter<TwitterUser> twitterUserEmitter;

    @PostConstruct
    private void setup() {
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
    public String register(@FormParam("handle") String handle) throws TwitterException {
        TwitterUser twitterUser = TwitterUser.find("handle", handle).firstResult();
        if(twitterUser == null) {
            try {
                User user = twitter.users().lookupUsers(handle).get(0);
                twitterUser = new TwitterUser(handle, user.getName(), user.getLocation(), user.getMiniProfileImageURLHttps());
                twitterUser.persist();
                //TODO Setup reactive messaging config for Kafka
//                twitterUserEmitter.send(twitterUser);
            } catch (TwitterException e) {
                return "No record found by that name.";
            }
        }
        return String.format("welcome %s from %s", twitterUser.fullName, twitterUser.location);
    }
}