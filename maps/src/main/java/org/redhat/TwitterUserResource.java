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
                new TwitterUser("radcortez", "Roberto Cortez", "Coimbra"),
                new TwitterUser("evanchooly", "Justin Lee", "New York"),
                new TwitterUser("kenfinnigan", "Ken Finnigan", "Pembroke"))
                  .collect(Collectors.toList());

        return Response.ok(users).build();
    }
}
