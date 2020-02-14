package org.redhat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

@Entity
public class TwitterUser extends PanacheEntityBase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;
    public String handle;
    public String fullName;
    public String location;
    public String miniProfileImageUrl;

    public TwitterUser() {
    }

    public TwitterUser( String handle, String fullName, String location, String miniProfileImageUrl) {
        this.handle = handle;
        this.fullName = fullName;
        this.location = location;
        this.miniProfileImageUrl = miniProfileImageUrl;
    }
}
