package org.redhat;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import twitter4j.Query;
import twitter4j.ResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.conf.ConfigurationBuilder;

import javax.transaction.Transactional;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@Path("/twitter")
public class TwitterResource {

    private final Twitter twitter;

    public TwitterResource() throws IOException {
        Properties props = new Properties();
        try(InputStream resourceAsStream = getClass().getResourceAsStream("/kraken.properties")) {
            props.load(resourceAsStream);
        }
        ConfigurationBuilder cb = new ConfigurationBuilder()
                                      .setDebugEnabled(true)
                                      .setOAuthConsumerKey(props.getProperty("kraken.api.key"))
                                      .setOAuthConsumerSecret(props.getProperty("kraken.api.secret"))
                                      .setOAuthAccessToken(props.getProperty("kraken.access.token"))
                                      .setOAuthAccessTokenSecret(props.getProperty("kraken.access.secret"));
        twitter = new TwitterFactory(cb.build())
                      .getInstance();
    }

    @POST
    @Transactional
    @Produces(MediaType.TEXT_PLAIN)
    public String register(@FormParam("handle") String handle) throws TwitterException {
        TwitterUser twitterUser = TwitterUser.find("handle", handle).firstResult();
        if(twitterUser == null) {
            User user = twitter.users().lookupUsers(handle).get(0);
            twitterUser = new TwitterUser(handle, user.getName(), user.getLocation(), user.getMiniProfileImageURLHttps());
            twitterUser.persist();
            fireKafkaEvent(twitterUser);
        }
        return String.format("welcome %s from %s", twitterUser.fullName, twitterUser.location);
    }

    private void fireKafkaEvent(final TwitterUser twitterUser) {
        System.out.println("TODO");
    }
}