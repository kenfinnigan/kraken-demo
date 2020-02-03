package org.redhat;

public class TwitterUser {
    public String handle;
    public String fullName;
    public String location;
    public String miniProfileImageUrl;

    public TwitterUser(final String handle, final String fullName, final String location) {
        this.handle = handle;
        this.fullName = fullName;
        this.location = location;
    }
}
