package org.redhat;

import io.quarkus.arc.config.ConfigProperties;
import org.eclipse.microprofile.config.inject.ConfigProperty;

@ConfigProperties(prefix = "kraken")
public interface KrakenConfig {
    @ConfigProperty(name = "api.key")
    String apiKey();

    @ConfigProperty(name = "api.secret")
    String apiSecret();

    @ConfigProperty(name = "access.token")
    String accessToken();

    @ConfigProperty(name = "access.secret")
    String accessSecret();
}
