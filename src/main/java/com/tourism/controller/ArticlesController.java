package com.tourism.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.dao.*;
import com.tourism.entity.Articles;
import com.tourism.entity.Sysuser;
import com.tourism.util.Info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
public class ArticlesController extends BaseController {

	@Resource
    ArticlesDAO articlesDAO;

    @Resource
    CommentDAO commentDAO;

	//文章列表
	@ResponseBody
    @RequestMapping("articles/list")
    public HashMap<String,Object> articlesList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
        Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
        String key = request.getParameter("key");
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap map = new HashMap();
        map.put("key", key);
        List<Articles> objectlist = articlesDAO.selectAll(map);
        PageHelper.startPage(pageNum, pageSize);
        List<Articles> list = articlesDAO.selectAll(map);
        PageInfo<Articles> pageInfo = new PageInfo<Articles>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);

        return res;
    }


    @ResponseBody
    @RequestMapping("articlesLb")
    public HashMap<String,Object> articlesLb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
	     String key = request.getParameter("key");
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap map = new HashMap();
        map.put("key", key);
        List<Articles> objectlist = articlesDAO.selectAll(map);
        PageHelper.startPage(pageNum, pageSize);
        List<Articles> list = articlesDAO.selectAll(map);
        PageInfo<Articles> pageInfo = new PageInfo<Articles>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);
        return res;
    }


	//添加文章
	@ResponseBody
	@RequestMapping("articles/add")
	public HashMap<String,Object> articlesAdd(Articles articles , HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        articles.setSavetime(new Date());
        articlesDAO.add(articles);
		return null;
	}

    @ResponseBody
    @RequestMapping("articles/show")
    public HashMap<String,Object> articlesShow(int id,HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        Articles articles = articlesDAO.findById(id);
        res.put("articles", articles);
        return res;
    }

    @ResponseBody
    @RequestMapping("articles/edit")
    public HashMap<String,Object> articlesEdit(Articles articles, HttpServletRequest request) {
        articlesDAO.update(articles);
        return null;
    }

	//删除文章
	@ResponseBody
	@RequestMapping("articles/del")
	public HashMap<String,Object> articlesDel(int id,HttpServletRequest request) {
		articlesDAO.delete(id);//删除文章
        commentDAO.deleteByArticlesid(id);//删除文章相关评论
		return null;
	}

}
