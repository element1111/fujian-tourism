package com.tourism.controller;

import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.HashMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.dao.AboutDAO;
import com.tourism.entity.About;

/**
 * (About)控制层
 *
 * @author makejava
 * @since 2026-01-27 09:26:42
 */
@RestController
@RequestMapping("/about")
public class AboutController {
    /**
     * 服务对象
     */
    @Resource
    private AboutDAO aboutDAO;


    /**
     * 查询全部
     *
     */
    @RequestMapping(value = "selectAll", method = RequestMethod.POST)
    public HashMap<String,Object> selectAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,About about,HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
		List<About> objectlist = aboutDAO.selectAll(about);
        PageHelper.startPage(pageNum, pageSize);
		List<About> list = aboutDAO.selectAll(about);
		PageInfo<About> pageInfo = new PageInfo<About>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", objectlist);
        return res;
    }

    /**
     * 通过主键查询单条数据
     *
     */
    @RequestMapping(value = "get", method = RequestMethod.POST)
    public HashMap<String,Object> findById(Integer id) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        About about = aboutDAO.findById(id);
        res.put("data",about);
        return res;
    }

    /**
     * 新增一条数据
     *
     * @param about 实体类
     * @return Response对象
     */
    @RequestMapping(value = "insert", method = RequestMethod.POST)
    public void insert(About about) {
        aboutDAO.insert(about);
    }

    /**
     * 修改一条数据
     *
     * @param about 实体类
     * @return Response对象
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public void update(About about) {
        aboutDAO.update(about);
    }

    /**
     * 删除一条数据
     *
     */
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public void delete(Integer id) {
        aboutDAO.delete(id);
    }


}


