package com.p2p.controller.front;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.controller.back.SendMsgUtil;
import com.p2p.pojo.User;
import com.p2p.service.back.MessageUtilService;
import com.p2p.service.back.SendMsgService;
import com.p2p.service.front.IUserService;
import com.p2p.util.MessageBenas;

/**
 * 开发人:汪栋才
 * 2017-11-16
 * AJAX注册登入高级验证的controller的
 * */
@Controller
@RequestMapping(value="/front")
public class AjaxController {
	
		@Resource(name="IUserServiceImpl")
		private IUserService iUserService;
	
		
		@Resource(name="sendMsgServiceImpl")
		private SendMsgService sendmsg;
		
		@Resource(name="messageUtilServiceImpl")
		private MessageUtilService messageUtil;
		
		
		//注册界面把电话号码发送过来查询数据库是否存在
		@RequestMapping(value="/getregpdphishave")
		@ResponseBody
		public String RegpdPhishave(@RequestParam String phone) throws JsonProcessingException {
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(phone);

			User user = new User();
			user.setUphone(phone);
			User user2 =  iUserService.getModel(user);
			if(user2!=null){
				map.put("message","此用户已存在");
			}else {
				map.put("mas","ok");
			}
			map.put("verify_nums",4); 
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			ModelAndView model = new ModelAndView();
			model.setViewName("/views/front/register");
			model.addObject(aa);
			return aa;
		}
		
		
		
		
		/**
		 * 注册时检查邀请码是否存在用户
		 * */
		@RequestMapping(value="/ishaveyqcode")
		@ResponseBody
		public String ishaveyqcode(@RequestParam String mycode) throws JsonProcessingException {
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(mycode);

			User user = new User();
			user.setUinvite(mycode);
			User user2 =  iUserService.getModel(user);
			if(user2==null){
				map.put("message","请检测您的邀请码是否正确");
			}else {
				map.put("verify_nums",4); 
			}
			
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			ModelAndView model = new ModelAndView();
			model.setViewName("/views/front/register");
			model.addObject(aa);
			return aa;
		}

		
		
		
		//注册时需发送的验证码
		@RequestMapping(value="/getregsendphone")
		@ResponseBody
		public String RegSendPhone(@RequestParam String phone) throws JsonProcessingException {
		
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(phone);
			Integer ranks = (int)((Math.random()*9+1)*100000); 
			/**
			 * 这里省略发送
			 * */
			SendMsgUtil sUtil = new SendMsgUtil();
			Map<String,Object> orther = new HashMap<String,Object>();
			orther.put("yzcode",ranks);
			try {
				sUtil.Send(phone,MessageBenas.MSG_REGCODE,orther,sendmsg,messageUtil);
			} catch (Exception e) {
				//日志打印
				map.put("status", 2);
				map.put("msg","发送异常");
				e.printStackTrace();
			}
			map.put("status",1);
			map.put("ranks", ranks);
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			ModelAndView model = new ModelAndView();
			model.setViewName("/views/front/register");
			model.addObject(aa);
			return aa;
		}
		
		/**
		 * 修改账号和找回密码时需发送的验证码
		 * 当  count=1  选择修改账号发送短信
		 *   count=2 选择找回密码发短信
		 * */
		@RequestMapping(value="/getsendphone")
		@ResponseBody
		public String SendPhone(@RequestParam String phone,@RequestParam Integer count) throws JsonProcessingException {
		
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			Integer ranks = (int)((Math.random()*9+1)*100000); 
			
			SendMsgUtil sUtil = new SendMsgUtil();
			Map<String,Object> orther = new HashMap<String,Object>();
			orther.put("yzcode",ranks);
			try {
				if(count==1) {
					sUtil.Send(phone,MessageBenas.MSG_UPDATEPHONE,orther,sendmsg,messageUtil);
					map.put("status",1);
					map.put("ranks", ranks);
				}else if(count==2){
					sUtil.Send(phone,MessageBenas.MSG_UPDATEPWD,orther,sendmsg,messageUtil);
					map.put("status",1);
					map.put("ranks", ranks);
					map.put("msg","已成功发送验证码");
				}else {
					map.put("status",0);
					map.put("msg", "短信发送异常");
				}
			} catch (Exception e) {
				//日志打印
				map.put("status", 2);
				map.put("msg","发送异常");
				e.printStackTrace();
			}
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			
			return aa;
		}
}
