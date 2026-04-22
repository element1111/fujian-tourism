package com.tourism.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.dao.*;
import com.tourism.entity.*;
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
public class CommentController extends BaseController {

    @Resource
    CommentDAO commentDAO;
    @Resource
    ArticlesDAO newDAO;
    @Resource
    MemberDAO memberDAO;
    @Resource
    SysuserDAO sysuserDAO;


    //评价列表
    @ResponseBody
    @RequestMapping("admin/commentList")
    public HashMap<String, Object> commentList(@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum, @RequestParam(defaultValue = "1", value = "pageSize") Integer pageSize, HttpServletRequest request) {
        String key = request.getParameter("key");
        String articlesid = request.getParameter("articlesid");
        HashMap<String, Object> res = new HashMap<String, Object>();
        HashMap map = new HashMap();
        map.put("key", key);
        map.put("articlesid", articlesid);
        List<Comment> objectlist = commentDAO.selectAll(map);
        for (Comment comment : objectlist) {
            Member member = memberDAO.findById(comment.getMemberid());
            Articles product = newDAO.findById(comment.getArticlesid());
            comment.setArticles(product);
            comment.setMember(member);
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Comment> list = commentDAO.selectAll(map);
        for (Comment comment : list) {
            Member member = memberDAO.findById(comment.getMemberid());
            Articles product = newDAO.findById(comment.getArticlesid());
            comment.setArticles(product);
            comment.setMember(member);
        }
        PageInfo<Comment> pageInfo = new PageInfo<Comment>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);

        return res;
    }


    //添加评价
    @ResponseBody
    @RequestMapping("commentAdd")
    public HashMap<String, Object> commentAdd(Comment comment, HttpServletRequest request) {
        Member member = (Member) request.getSession().getAttribute("sessionmember");
        HashMap<String, Object> res = new HashMap<String, Object>();
        HashMap map = new HashMap();
        map.put("memberid", member.getId());
        map.put("articlesid", comment.getArticlesid());


        Articles product = newDAO.findById(comment.getArticlesid());
        comment.setMemberid(member.getId());
        comment.setSavetime(new Date());
        commentDAO.add(comment);
        res.put("data", 200);//成功


        return res;
    }

    @ResponseBody
    @RequestMapping("admin/commentShow")
    public HashMap<String, Object> commentShow(int id, HttpServletRequest request) {
        HashMap<String, Object> res = new HashMap<String, Object>();
        Comment comment = commentDAO.findById(id);
        res.put("comment", comment);
        return res;
    }


    /**
     * 评价回复
     *
     * @param id
     * @param hfcontent
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("admin/commentEdit")
    public HashMap<String, Object> commentEdit(int id, String hfcontent, HttpServletRequest request) {
        Comment comment = commentDAO.findById(id);
        comment.setHfcontent(hfcontent);
        commentDAO.update(comment);
        return null;
    }


    //删除评价
    @ResponseBody
    @RequestMapping("admin/commentDel")
    public HashMap<String, Object> commentDel(int id, HttpServletRequest request) {
        commentDAO.delete(id);
        return null;
    }

}
