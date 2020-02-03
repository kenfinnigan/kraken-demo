package org.redhat;

import org.eclipse.microprofile.config.inject.ConfigProperty;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/google/maps")
public class GoogleMapsResource {
    @Inject
    @ConfigProperty(name = "google.maps.apiKey")
    String apiKey;

    @GET
    @Path("/apiKey")
    @Produces(MediaType.TEXT_PLAIN)
    public Response apiKey() {
        return Response.ok(apiKey).build();
    }
}
