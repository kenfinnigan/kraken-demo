package org.redhat;

import io.quarkus.kafka.client.serialization.JsonbDeserializer;

public class TwitterUserDeserializer extends JsonbDeserializer<TwitterUser> {
    public TwitterUserDeserializer() {
        super(TwitterUser.class);
    }
}
