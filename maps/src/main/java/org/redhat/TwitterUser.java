package org.redhat;

public class TwitterUser {
    public String handle;
    public String fullName;
    public String location;
    public String miniProfileImageUrl;

    public TwitterUser(
        final String handle,
        final String fullName,
        final String location,
        final String miniProfileImageUrl) {
        this.handle = handle;
        this.fullName = fullName;
        this.location = location;
        this.miniProfileImageUrl = miniProfileImageUrl;
    }

    @Override
    public String toString() {
        return "TwitterUser{" +
               "handle='" + handle + '\'' +
               ", fullName='" + fullName + '\'' +
               ", location='" + location + '\'' +
               '}';
    }
}
