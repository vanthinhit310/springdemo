package com.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Account {
    private String name;
    private String email;
    private String password;
    private String createdDate;
    private Long role;
    private Post postByName;

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Id
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "created_date")
    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @Column(name = "role")
    public Long getRole() {
        return role;
    }

    public void setRole(Long role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Account account = (Account) o;
        return Objects.equals(name, account.name) &&
                Objects.equals(email, account.email) &&
                Objects.equals(password, account.password) &&
                Objects.equals(createdDate, account.createdDate) &&
                Objects.equals(role, account.role);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, email, password, createdDate, role);
    }

    @ManyToOne
    @JoinColumn(name = "name", referencedColumnName = "adder")
    public Post getPostByName() {
        return postByName;
    }

    public void setPostByName(Post postByName) {
        this.postByName = postByName;
    }
}
