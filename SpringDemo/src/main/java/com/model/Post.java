package com.model;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Post {
    private String code;
    private String title;
    private String description;
    private String content;
    private String adder;
    private String language;
    private String time;
    private String url;
    private String view;
    private Collection<Comment> commentsByCode;
    private Collection<Account> adderofpost;

    @Id
    @Column(name = "code")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "adder")
    public String getAdder() {
        return adder;
    }

    public void setAdder(String adder) {
        this.adder = adder;
    }

    @Basic
    @Column(name = "language")
    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Basic
    @Column(name = "time")
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "view")
    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Post post = (Post) o;
        return Objects.equals(code, post.code) &&
                Objects.equals(title, post.title) &&
                Objects.equals(description, post.description) &&
                Objects.equals(content, post.content) &&
                Objects.equals(adder, post.adder) &&
                Objects.equals(language, post.language) &&
                Objects.equals(time, post.time) &&
                Objects.equals(url, post.url) &&
                Objects.equals(view, post.view);
    }

    @Override
    public int hashCode() {
        return Objects.hash(code, title, description, content, adder, language, time, url, view);
    }

    @OneToMany(mappedBy = "postByPostcode")
    public Collection<Comment> getCommentsByCode() {
        return commentsByCode;
    }

    public void setCommentsByCode(Collection<Comment> commentsByCode) {
        this.commentsByCode = commentsByCode;
    }

    @OneToMany(mappedBy = "postByName")
    public Collection<Account> getAdderofpost() {
        return adderofpost;
    }

    public void setAdderofpost(Collection<Account> adderofpost) {
        this.adderofpost = adderofpost;
    }
}
