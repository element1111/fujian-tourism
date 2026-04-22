package com.tourism.entity;


public class Fav {

  private int id;
  private int memberid;
  private int articlesid;

    private Articles articles;

    public Articles getArticles() {
        return articles;
    }

    public void setArticles(Articles articles) {
        this.articles = articles;
    }

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
}
