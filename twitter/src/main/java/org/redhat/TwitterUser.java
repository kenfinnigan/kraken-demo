package org.redhat;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Entity;

@Entity
public class TwitterUser extends PanacheEntity {
    public String handle;
    public String fullName;
    public String location;
    private String miniProfileImageUrl;

    public TwitterUser() {
    }

    public TwitterUser( String handle, String fullName, String location, String miniProfileImageUrl) {
        this.handle = handle;
        this.fullName = fullName;
        this.location = location;
        this.miniProfileImageUrl = miniProfileImageUrl;
    }
}
