package com.p2p.controller.front;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Sing;
import com.p2p.pojo.User;
import com.p2p.service.front.SingService;
import com.p2p.util.DateUtils;

/**
 * 操作人:汪栋才
 * 操作时间:2018-1-17
 * 操作用户等级和签到的
 * */
@Controller
@RequestMapping("/user")
public class UserSingControoler {
	
	@Resource(name="singServiceImpl")
	private SingService singService;
	
	/**
	 * 判断用户今天是否签到
	 * */
	@RequestMapping("checkusersing")
	@ResponseBody
	public int checkusersing(HttpSession session) {
		User user =(User)session.getAttribute("user");
		String userid = user.getUid().toString();
		String day  =DateUtils.getNowDate();
		List<Sing> sig =  new ArrayList<Sing>();
		sig = singService.checkusersing(userid, day);
		if(sig.size()==0) {
			//未签到
			return 0;
		}else {
			return 1;
		}
		
	}
	
	@RequestMapping("usersing")
	@ResponseBody
	public String usersing(HttpSession session) throws Exception {
		Map<String,Object> resu = new HashMap<String,Object>();
		ObjectMapper obj =new ObjectMapper();
		User user =(User)session.getAttribute("user");
		int isupdate = 0;
		/**
		 * 判断用户是否是第一次签到
		 * */
		Sing sing = new Sing();
		sing.setSiguser(user.getUid());
		sing = singService.getModel(sing);
		if(sing==null) {
			//第一次签到
			sing = new Sing();
			sing.setSiguser(user.getUid());
			sing.setSiglevel(1);
			sing.setSiggrowth("2");
			sing.setLasttime(DateUtils.getLastYear());
			sing.setName("帮主");
			sing.setCountday(0);
			//取还需成长值
			sing.setIntegral(4000-2);
			isupdate = singService.addModel(sing);
		}else {
			//其他
			sing.setSiguser(user.getUid());
			
			Integer rowth = Integer.parseInt(sing.getSiggrowth());
			//判断签到天数
			String thisday = DateUtils.getNowDate();
			String sqlday = sing.getLasttime();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date thisdate = format.parse(thisday);
			Date sqldate = format.parse(sqlday);
			//返回两个的天数
			
			if(sing.getCountday()<=10 && sing.getCountday()!=0) {
				sing.setSiggrowth(sing.getCountday()+2+rowth+"");
			}else if(sing.getCountday()>10){
				//每次大于10以上只加10成长值
				sing.setSiggrowth(rowth+10+"");
			}else {
				//第一次签到
				sing.setSiggrowth(rowth+2+"");
			}
			/**
			 * 连续签到实现
			 * */
			int aa = DateUtils.differentDays(thisdate, sqldate);
			if(aa==1) {
				int day = sing.getCountday();
				sing.setCountday(day+1);
			}else{
				sing.setCountday(0);
			}
			
			/**
			 * 判断等级
			 * */
			Integer rowths = Integer.parseInt(sing.getSiggrowth());
			if(rowths>=4000) {
				//铁帮主
				sing.setSiglevel(2);
				sing.setName("铁帮主");
				//取还需成长值
				sing.setIntegral(20000-rowths);
			}else if(rowths>=20000) {
				//铜帮主
				sing.setSiglevel(3);
				sing.setName("铜帮主");
				//取还需成长值
				sing.setIntegral(60000-rowths);
			}else if(rowths>=60000) {
				//金帮主
				sing.setSiglevel(4);
				sing.setName("金帮主");
				//取还需成长值
				sing.setIntegral(240000-rowths);
			}else if(rowths>=240000) {
				//白金帮主
				sing.setSiglevel(5);
				sing.setName("白金帮主");
				//取还需成长值
				sing.setIntegral(99999999-rowths);
			}else {
				sing.setName("帮主");
				//取还需成长值
				sing.setIntegral(4000-rowths);
			}
			
			sing.setLasttime(DateUtils.getNowDate());
			isupdate = singService.update(sing);
		}
		resu.put("sing",sing);
		resu.put("isupdate",isupdate);
		String data = obj.writeValueAsString(resu);
		return data;
	}
	
}
