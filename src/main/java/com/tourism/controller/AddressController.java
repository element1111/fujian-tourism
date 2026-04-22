package com.tourism.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tourism.dao.AddressDAO;
import com.tourism.dao.MemberDAO;
import com.tourism.dao.PaintingDAO;
import com.tourism.dao.SysuserDAO;
import com.tourism.entity.Address;
import com.tourism.entity.Sysuser;

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
public class AddressController extends BaseController {

	@Resource
    AddressDAO addressDAO;
	//列表
	@ResponseBody
    @RequestMapping("address/list")
    public HashMap<String,Object> addressList(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
        Sysuser admin = (Sysuser)request.getSession().getAttribute("admin");
        String key = request.getParameter("key");
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap map = new HashMap();
        map.put("key", key);
        List<Address> objectlist = addressDAO.selectAll(map);
        PageHelper.startPage(pageNum, pageSize);
        List<Address> list = addressDAO.selectAll(map);
        PageInfo<Address> pageInfo = new PageInfo<Address>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);

        return res;
    }


    @ResponseBody
    @RequestMapping("addressLb")
    public HashMap<String,Object> addressLb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,@RequestParam(defaultValue = "1",value = "pageSize") Integer pageSize,HttpServletRequest request){
	     String key = request.getParameter("key");
        HashMap<String,Object> res = new HashMap<String,Object>();
        HashMap map = new HashMap();
        map.put("key", key);
        List<Address> objectlist = addressDAO.selectAll(map);
        PageHelper.startPage(pageNum, pageSize);
        List<Address> list = addressDAO.selectAll(map);
        PageInfo<Address> pageInfo = new PageInfo<Address>(list);
        res.put("pageInfo", pageInfo);
        res.put("list", objectlist);
        return res;
    }


	//添加
	@ResponseBody
	@RequestMapping("address/add")
	public HashMap<String,Object> addressAdd(Address address, HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        address.setSavetime(new Date());
        addressDAO.add(address);
		return null;
	}

    @ResponseBody
    @RequestMapping("address/show")
    public HashMap<String,Object> addressShow(int id,HttpServletRequest request) {
        HashMap<String,Object> res = new HashMap<String,Object>();
        Address address = addressDAO.findById(id);
        res.put("address", address);
        return res;
    }

    @ResponseBody
    @RequestMapping("address/edit")
    public HashMap<String,Object> addressEdit(Address address, HttpServletRequest request) {
        addressDAO.update(address);
        return null;
    }



	//删除
	@ResponseBody
	@RequestMapping("address/del")
	public HashMap<String,Object> addressDel(int id,HttpServletRequest request) {
		addressDAO.delete(id);
		return null;
	}

}
