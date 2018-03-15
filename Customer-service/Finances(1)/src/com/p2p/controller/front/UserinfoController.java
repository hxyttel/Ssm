package com.p2p.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.controller.back.SendMailUtil;
import com.p2p.controller.back.UtilController;
import com.p2p.pojo.Area;
import com.p2p.pojo.City;
import com.p2p.pojo.Userinfo;
import com.p2p.service.back.SendMailService;
import com.p2p.service.front.AddressService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.UserInfoService;

/**
 * 用户基本信息Controller类
 * 
 * @author lxj
 * */
@Controller
@RequestMapping("/userInfo")
public class UserinfoController {
	@Resource(name="userInfoServiceImpl")
	private UserInfoService userInfoService;  //用户基本信息表
	@Resource(name="IUserServiceImpl")
	private IUserService iuserService;  //用户表
	@Resource(name="addressServiceImpl")
	private AddressService addressService;  //获取地址(省市县)
	@Resource(name="sendMailServiceImpl")
	private SendMailService sendMailService;  //发送email
	
	/**
	 * 修改用户基本信息(头像,昵称,生日,地址等)
	 * */
	@RequestMapping("/updateBaseInfo")
	@ResponseBody
	public int updateUserInfo(HttpSession session,HttpServletRequest request,MultipartFile uiheadImg) {
		Userinfo userinfo = new Userinfo();
		userinfo.setUiid(Integer.valueOf(request.getParameter("uiid")));
		userinfo.setUiheadImg(request.getParameter("uiheadImgs"));
		userinfo.setUisex(request.getParameter("uisex"));
		userinfo.setUibirthday(request.getParameter("uibirthday"));
		userinfo.setUiname(request.getParameter("uiname"));
		userinfo.setPvid(Integer.valueOf(request.getParameter("pvid")));
		userinfo.setCyid(Integer.valueOf(request.getParameter("cyid")));
		userinfo.setAeid(Integer.valueOf(request.getParameter("aeid")));
		int isUpdate = 0;
		try {
			if(userinfo.getUiheadImg().equals("") || userinfo.getUiheadImg()==null) {
				userinfo.setUiheadImg("/statics/front/statics/home2/images/user-head.png");
			}else {
				String filepath = UtilController.uploadFrom(request,uiheadImg);
				userinfo.setUiheadImg(filepath);
			}
			userInfoService.update(userinfo);
			isUpdate = 1;
			
			//重新加载userinfo中的值
			Userinfo uinfo = userInfoService.getModel(userinfo);
			session.setAttribute("userinfo", uinfo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isUpdate;
	}
	
	/**
	 * 根据省份id获取到市
	 * */
	@RequestMapping("getCity")
	@ResponseBody
	public Object getCity(String pvid,HttpServletResponse response) {
		//防止数据乱码
		response.setCharacterEncoding("UTF-8");
		List<City> list =  addressService.getCityByPvId(pvid);
		return  list;
	}
	
	/**
	 * 根据市级id获取到县
	 * */
	@RequestMapping("getArea")
	@ResponseBody
	public Object getAreas(String cyid,HttpServletResponse response){
		//防止数据乱码
		response.setCharacterEncoding("UTF-8");
		List<Area> list = addressService.getAreaByCyid(cyid);
		return  list;
	}
	
	/**
	 * 查询用户邮箱是否存在
	 * @throws JsonProcessingException 
	 * */
	@RequestMapping(value="getEmail")
	@ResponseBody
	public String getEmail(@RequestParam String uiemail) throws JsonProcessingException {
		Map<String,Object> map = new HashMap<String,Object>();
		Userinfo uinfo = userInfoService.selectByEmail(uiemail);
		if(uinfo!=null) {
			map.put("status", 1);
		}else {
			map.put("status", 0);
		}
		ObjectMapper om = new ObjectMapper();
		String result = om.writeValueAsString(map);
		return result;
	}
	
	/**
	 * 发送到邮箱中验证
	 * */
	@RequestMapping(value = "sendemail")
	@ResponseBody
	public int sendMail(@RequestParam String uphone,@RequestParam String uiemail) {
		int status = 0;
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("uphone",uphone);
		map.put("title", "找回密码");
		map.put("email",uiemail);
		//调用方法
		boolean isSuccess = SendMailUtil.sendUpdatePwd(map,sendMailService);
		if(isSuccess){
			status = 1;
		}
		return status;
	}
	
	/**
	 * 邮箱点击验证的controller
	 * */
	@RequestMapping(value = "setPwd")
	public String emailCheck(@RequestParam String uphone,HttpSession session) {
		session.setAttribute("uphone", uphone);
		return "views/front/email_setpwd";
	}
}
