package com.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Comment {
    private String code;
    private String content;
    private String commentof;
    private String postcode;
    private Post postByPostcode;

    @Id
    @Column(name = "code")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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
    @Column(name = "commentof")
    public String getCommentof() {
        return commentof;
    }

    public void setCommentof(String commentof) {
        this.commentof = commentof;
    }

    @Basic
    @Column(name = "postcode")
    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Comment comment = (Comment) o;
        return Objects.equals(code, comment.code) &&
                Objects.equals(content, comment.content) &&
                Objects.equals(commentof, comment.commentof) &&
                Objects.equals(postcode, comment.postcode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(code, content, commentof, postcode);
    }

    @ManyToOne
    @JoinColumn(name = "postcode", referencedColumnName = "code")
    public Post getPostByPostcode() {
        return postByPostcode;
    }

    public void setPostByPostcode(Post postByPostcode) {
        this.postByPostcode = postByPostcode;
    }
}
