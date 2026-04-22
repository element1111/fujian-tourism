package com.tourism.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.dao.*;
import com.tourism.entity.*;
import com.tourism.util.Info;
import com.tourism.util.UserCFDemo;

@Controller
public class PaintingController extends BaseController {

	@Resource
    PaintingDAO paintingDAO;

    @Resource
    private CategoryDAO categoryService;
    @Resource
    MemberDAO memberDAO;
    @Resource
    CommentDAO commentDAO;


	//列表
	@ResponseBody
	@RequestMapping("/painting/list")
	public HashMap<String,Object> productList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
		Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
	    String key = request.getParameter("key");
		String key1 = request.getParameter("key1");
        String isshow = request.getParameter("isshow");

		HashMap<String,Object> res = new HashMap<String,Object>();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("key", key);
        map.put("key1", key1);
        map.put("isshow", isshow);
		List<Painting> objectlist = paintingDAO.selectAll(map);
        for (int i = 0; i < objectlist.size(); i++) {
            objectlist.get(i).setCategoryname(categoryService.selectByPrimaryKey(objectlist.get(i).getCategoryid()).getName());
        }
		PageHelper.startPage(pageNum, pageSize);
		List<Painting> list = paintingDAO.selectAll(map);
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setCategoryname(categoryService.selectByPrimaryKey(list.get(i).getCategoryid()).getName());
        }
		PageInfo<Painting> pageInfo = new PageInfo<Painting>(list);
		res.put("pageInfo", pageInfo);
		res.put("list", objectlist);
		return res;
	}



    //前台列表
    @ResponseBody
    @RequestMapping("productLb")
    public HashMap<String,Object> productLb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
        String key = request.getParameter("key");
        String key1 = request.getParameter("key1");

        String isshow = request.getParameter("isshow");
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap<String,String> map = new HashMap<String,String>();
        map.put("key", key);
        map.put("key1", key1);
        map.put("isshow", isshow);
        //排序
        List<Painting> objectlist = paintingDAO.selectAll(map);
        for (int i = 0; i < objectlist.size(); i++) {
            objectlist.get(i).setCategoryname(categoryService.selectByPrimaryKey(objectlist.get(i).getCategoryid()).getName());
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Painting> list = paintingDAO.selectAll(map);
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setCategoryname(categoryService.selectByPrimaryKey(list.get(i).getCategoryid()).getName());
        }
        PageInfo<Painting> pageInfo = new PageInfo<Painting>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);
        return res;
    }




	//商家
	@ResponseBody
	@RequestMapping("/painting/insert")
	public HashMap<String,Object> productAdd(Painting painting, HttpServletRequest request) {
        painting.setIsshow("yes");
        painting.setCreattime(new Date());
		paintingDAO.add(painting);
		return null;
	}

	//展示
	@ResponseBody
	@RequestMapping("/painting/show")
	public HashMap<String,Object> paintingShow(int id,HttpServletRequest request) {
		HashMap<String,Object> res = new HashMap<String,Object>();
		Painting painting = paintingDAO.findById(id);
        painting.setCategoryname(categoryService.selectByPrimaryKey(painting.getCategoryid()).getName());
		res.put("painting", painting);
		return res;
	}

	//编辑
	@ResponseBody
	@RequestMapping("/painting/edit")
	public HashMap<String,Object> paintingEdit(Painting painting, HttpServletRequest request) {
		paintingDAO.update(painting);
		return null;
	}

	//删除
	@ResponseBody
	@RequestMapping("admin/productDel")
	public HashMap<String,Object> productDel(HttpServletRequest request) {
		String id = request.getParameter("id");
		paintingDAO.delete(Integer.parseInt(id));
		return null;
	}

    /**
     * 上下架
     */

    @ResponseBody
    @RequestMapping("painting/isshow")
    public void issshow(int id,HttpServletRequest request) {
        Painting painting =  paintingDAO.findById(id);
        if(painting.getIsshow().equals("yes")){
            painting.setIsshow("no");
        }else{
            painting.setIsshow("yes");
        }
        paintingDAO.update(painting);
    }


    @ResponseBody
    @RequestMapping("hotSale")
    public List<Painting> hotSale() {
        List<Painting> res = new ArrayList<Painting>();
        HashMap ccc = new HashMap();
        Map<String, Long> entrymap = new HashMap<String, Long>();
        List<Painting> productlist = paintingDAO.selectAll(null);
        for(Painting painting :productlist){

            entrymap.put(String.valueOf(painting.getId()), (long) 5);
        }
        List<Map.Entry<String, Long>> reslist = new ArrayList<Map.Entry<String, Long>>(entrymap.entrySet());
        //将map.entrySet()转换成list
        Collections.sort(reslist, new Comparator<Map.Entry<String, Long>>() {
            //降序排序
            @Override
            public int compare(Map.Entry<String, Long> o1, Map.Entry<String, Long> o2) {
                //return o1.getValue().compareTo(o2.getValue());
                return o2.getValue().compareTo(o1.getValue());
            }
        });

        for(int i=0;i<reslist.size();i++){
            String [] arr = reslist.get(i).toString().split("=");
            Painting painting2 = paintingDAO.findById(Integer.parseInt(arr[0]));
            res.add(painting2);
        }
        return res;
    }




    //协同过滤（暂时不用）
    @ResponseBody
    @RequestMapping("loveList")
    public HashMap<String,Object> loveList(HttpServletRequest request){
        HashMap<String,Object> res = new HashMap<String,Object>();
        Member member = (Member)request.getSession().getAttribute("sessionmember");
        List<Painting> lovelist = new ArrayList<Painting>();

        if(member!=null) {
            //用户集合
            List<Member> ulist = memberDAO.selectAll(null);
            String[] uarray = new String[ulist.size()];
            for (int i = 0; i < ulist.size(); i++) {
                uarray[i] = String.valueOf(ulist.get(i).getId());
            }

            //商品集合
            HashMap map = new HashMap();
            List<Painting> paintings = paintingDAO.selectAll(null);
            String[] dyarray = new String[paintings.size()];
            for (int i = 0; i < paintings.size(); i++) {
                dyarray[i] = String.valueOf(paintings.get(i).getId());
            }

            //评分
            int[][] arr2 = new int[ulist.size()][];
            int count = 0;
            //System.out.println("arr2.length=="+arr2.length);
            for (int i = 0; i < arr2.length; i++) {
                Member mb = ulist.get(i);
                //System.out.println("userobj"+i+"    "+userobj);
                //创建一维数组
                int[] tmpArr = new int[paintings.size()];
                //创建二维数组
                for (int j = 0; j < tmpArr.length; j++) {
                    Painting painting = paintings.get(j);
                    HashMap map1 = new HashMap();
                    map.put("memberid", mb.getId());
                    map.put("productid", painting.getId());
                    List<Comment> comments = commentDAO.selectAll(map);
                    if (comments.size() > 0) {
                        int pf = 0;
                        for (Comment comment : comments) {
                            pf += comment.getScore();
                        }
                        tmpArr[j] = pf;
                    }
                }
                arr2[i] = tmpArr;
            }
            for (int m = 0; m < arr2.length; m++) {
                for (int n = 0; n < arr2[m].length; n++) {
                    System.out.print(arr2[m][n] + "  ");
                }
                System.out.println();
            }

            UserCFDemo u = new UserCFDemo();
            u.users = uarray;
            u.movies = dyarray;
            u.allUserMovieStarList = arr2;
            u.membernum = ulist.size();
            u.mvnum = paintings.size();
            List<String> rtnlist = u.mvlist(String.valueOf(member.getId()));
            String aa = "";
            for (int m = 0; m < rtnlist.size(); m++) {
                Painting p = paintingDAO.findById(Integer.valueOf(rtnlist.get(m)));
                lovelist.add(p);
                System.out.println("推荐的商品===" + p.getName());
            }

            res.put("lovelist", lovelist);
        }
        return res;
    }




}
