package org.redhat;

public class TwitterUser {
    public String handle;
    public String fullName;
    public String location;
    public String miniProfileImageUrl;

    public TwitterUser() {
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
