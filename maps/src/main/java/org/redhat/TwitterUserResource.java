package org.redhat;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Path("/twitter/users")
@Produces(MediaType.APPLICATION_JSON)
public class TwitterUserResource {
    @GET
    public Response users() {
        final List<TwitterUser> users =
            Stream.of(
                new TwitterUser("radcortez", "Roberto Cortez", "Coimbra", "https://pbs.twimg.com/profile_images/2699653917/2ff28994483f71d4487e76a0e30ebbbd_400x400.jpeg"),
                new TwitterUser("evanchooly", "Justin Lee", "New York", "https://pbs.twimg.com/profile_images/687965772044357632/6QKmYlhK_400x400.jpg"),
                new TwitterUser("kenfinnigan", "Ken Finnigan", "Pembroke", "https://pbs.twimg.com/profile_images/606910050255257600/BH5u3BVD_400x400.jpg"))
                  .collect(Collectors.toList());

        return Response.ok(users).build();
    }
}
