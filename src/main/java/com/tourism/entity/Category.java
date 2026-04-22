package com.tourism.entity;

import java.io.Serializable;


/**
 * 种类表(Category)实体类
 *
 * @author makejava
 * @since 2026-02-12 11:39:18
 */

public class Category implements Serializable {
    private static final long serialVersionUID = 390814246245139194L;

    private Integer id;

    /**
     * 种类名称
     */
    private String name;

    /**
     * 种类介绍
     */
    private String content;

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}

