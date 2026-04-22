package com.tourism.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Chat {

    private int id;
    private int memberid;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date savetime;
    private String hfcontent;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date hftime;
    private String hfname;
    private Member member;

    public Date getHftime() {
        return hftime;
    }

    public void setHftime(Date hftime) {
        this.hftime = hftime;
    }

    public String getHfname() {
        return hfname;
    }

    public void setHfname(String hfname) {
        this.hfname = hfname;
    }

    public int getMemberid() {
        return memberid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
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

}
