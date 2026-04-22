package com.tourism.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.dao.CategoryDAO;
import com.tourism.dao.PaintingDAO;
import com.tourism.entity.Category;
import com.tourism.entity.Painting;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * 景点浏览分类表(Category)表控制层
 *
 * @author makejava
 * @since 2026-02-12 11:39:14
 */
@RestController
@RequestMapping("/category")
public class CategoryController {
    /**
     * 服务对象
     */
    @Resource
    private CategoryDAO categoryService;
    @Resource
    private PaintingDAO paintingDAO;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<Category> queryById(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(this.categoryService.selectByPrimaryKey(id));
    }

    @RequestMapping(value = "selectAll", method = RequestMethod.POST)
    public HashMap<String,Object> selectAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum, @RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize, Category category, HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        List<Category> objectlist = categoryService.selectAll(category);
        PageHelper.startPage(pageNum, pageSize);
        List<Category> list = categoryService.selectAll(category);
        PageInfo<Category> pageInfo = new PageInfo<Category>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);
        return res;
    }
    @RequestMapping(value = "list", method = RequestMethod.POST)
    public HashMap<String,Object> list(Category category) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        List<Category> objectlist = categoryService.selectAll(category);
        res.put("list", objectlist);
        return res;
    }

    /**
     * 新增数据
     *
     * @param categoryEntity 实体
     * @return 新增结果
     */
    @RequestMapping(value = "insert", method = RequestMethod.POST)
    public ResponseEntity<Integer> add(Category categoryEntity) {
        return ResponseEntity.ok(this.categoryService.insert(categoryEntity));
    }

    /**
     * 编辑数据
     *
     * @param categoryEntity 实体
     * @return 编辑结果
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public ResponseEntity<Integer> edit(Category categoryEntity) {
        return ResponseEntity.ok(this.categoryService.update(categoryEntity));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public HashMap<String,Object> deleteById(Integer id) {
        HashMap<String,Object> returnData=new HashMap<>();
        HashMap map=new HashMap();
        map.put("categoryid",id);
        List<Painting> list = paintingDAO.selectAll(map);
        if(list.isEmpty()){
            this.categoryService.deleteById(id);
            returnData.put("data",200);
        }else{
            returnData.put("data",400);
        }
        return returnData;
    }

}

