package com.tourism.dao;

import org.apache.ibatis.annotations.Param;

import com.tourism.entity.Category;

import java.util.List;

/**
 * 种类表(category)表数据库访问层
 *
 * @author makejava
 * @since 2026-02-12 11:39:16
 */
public interface CategoryDAO {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Category selectByPrimaryKey(Integer id);

    List<Category> selectAll(Category categoryEntity);
    /**
     * 统计总行数
     *
     * @param categoryEntity 查询条件
     * @return 总行数
     */
    long count(Category categoryEntity);

    /**
     * 新增数据
     *
     * @param categoryEntity 实例对象
     * @return 影响行数
     */
    int insert(Category categoryEntity);


    /**
     * 新增数据
     *
     * @param categoryEntity 实例对象
     * @return 影响行数
     */
    int insertSelective(Category categoryEntity);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Category> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Category> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Category> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<Category> entities);

    /**
     * 修改数据
     *
     * @param categoryEntity 实例对象
     * @return 影响行数
     */
    int update(Category categoryEntity);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}

