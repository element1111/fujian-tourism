package com.tourism.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * (About)实体类
 *
 * @author makejava
 * @since 2026-01-27 09:26:42
 */
public class About implements Serializable {
    private static final long serialVersionUID = -42196333987259313L;

    private Integer id;
    /**
    * 名称
    */
    private String name;
    /**
    * logo
    */
    private String filename;
    /**
    * 种类
    */
    private String category;
    /**
    * 营业时间
    */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date opentime;
    /**
    * 联系电话
    */
    private String tel;
    /**
    * 详细地址
    */
    private String addr;

    /**
      搜索关键字
    */
    private String key;


    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }




    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }


    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


    public Date getOpentime() {
        return opentime;
    }

    public void setOpentime(Date opentime) {
        this.opentime = opentime;
    }


    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }


    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

}
