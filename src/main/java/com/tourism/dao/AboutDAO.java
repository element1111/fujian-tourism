package com.tourism.dao;

import java.util.List;

import com.tourism.entity.About;

/**
 * (About)表数据库访问层
 *
 * @author makejava
 * @since 2026-01-27 09:26:42
 */
public interface AboutDAO {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    About findById(Integer id);


    /**
     * 查询全部
     *
     * @return 对象列表
     */
    List<About> selectAll(About about);



    /**
     * 新增数据
     *
     * @param about 实例对象
     * @return 影响行数
     */
    void insert(About about);


    /**
     * 修改数据
     *
     * @param about 实例对象
     * @return 影响行数
     */
    void update(About about);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int delete(Integer id);
}


