package com.tourism.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Comment {

    private int id;
    private int memberid;
    private int articlesid;
    private int score;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date savetime;
    private String hfcontent;
    private Member member;
    private Articles articles;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMemberid() {
        return memberid;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public int getArticlesid() {
        return articlesid;
    }

    public void setArticlesid(int articlesid) {
        this.articlesid = articlesid;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getSavetime() {
        return savetime;
    }

    public void setSavetime(Date savetime) {
        this.savetime = savetime;
    }

    public String getHfcontent() {
        return hfcontent;
    }

    public void setHfcontent(String hfcontent) {
        this.hfcontent = hfcontent;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Articles getArticles() {
        return articles;
    }

    public void setArticles(Articles articles) {
        this.articles = articles;
    }
}
