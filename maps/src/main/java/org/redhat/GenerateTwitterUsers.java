package org.redhat;

import org.eclipse.microprofile.reactive.messaging.Outgoing;
import org.eclipse.microprofile.reactive.streams.operators.PublisherBuilder;
import org.eclipse.microprofile.reactive.streams.operators.ReactiveStreams;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@ApplicationScoped
public class GenerateTwitterUsers {
    @Outgoing("twitter-users")
    public PublisherBuilder<TwitterUser> publishUsers() {
        return ReactiveStreams.fromIterable(generateUsers());
    }

    private List<TwitterUser> generateUsers() {
        return Stream.of(
            new TwitterUser("radcortez", "Roberto Cortez", "Coimbra", "https://pbs.twimg.com/profile_images/2699653917/2ff28994483f71d4487e76a0e30ebbbd_400x400.jpeg"),
            new TwitterUser("evanchooly", "Justin Lee", "New York", "https://pbs.twimg.com/profile_images/687965772044357632/6QKmYlhK_400x400.jpg"),
            new TwitterUser("kenfinnigan", "Ken Finnigan", "Pembroke", "https://pbs.twimg.com/profile_images/606910050255257600/BH5u3BVD_400x400.jpg"))
                     .collect(Collectors.toList());
    }
}
