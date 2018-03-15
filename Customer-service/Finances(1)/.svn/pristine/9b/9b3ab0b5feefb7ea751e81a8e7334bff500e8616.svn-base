package com.p2p.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.User;
import com.p2p.service.back.RedmoneyService;
import com.p2p.util.CodePassage;

/**
 * 前台个人中心红包列表
 * 饶磊
 * 2018/1/11 
 * */
@Controller
public class RedmoneyFindController {
	
	@Resource(name="redmoneyServiceImpl")
	private RedmoneyService redmoneyservice;
	
	/**
	 *我的红包页面的conteroller
	 * */
	@RequestMapping(value="/toredpack")
	public String selectByNIU(HttpSession session,Model model) {
		User user = (User)session.getAttribute("user");
		if(user!=null) {
			List<Redmoney> listniu =  redmoneyservice.selectByNIU(user.getUid());
			listniu = CodePassage.makeRedMoneyList(listniu);
			model.addAttribute("listniu", listniu);
			
			List<Redmoney> listuse = redmoneyservice.selectByUse(user.getUid());
			listuse = CodePassage.makeRedMoneyList(listuse);
			model.addAttribute("listuse", listuse);
			
			List<Redmoney> listover = redmoneyservice.selectByOver(user.getUid());
			listover = CodePassage.makeRedMoneyList(listover);
			model.addAttribute("listover", listover);
			
		}
		return "views/front/management/redpacket";
	}
	
	@RequestMapping("ajaxgetUserRedMoney")
	@ResponseBody
	public String ajaxgetUserRedMoney(HttpSession session) throws Exception {
		ObjectMapper ob = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		String result = "";
		User user = (User)session.getAttribute("user");
		if(user!=null) {
			List<Redmoney> listniu =  redmoneyservice.selectByNIU(user.getUid());
			listniu = CodePassage.makeRedMoneyList(listniu);
			map.put("listniu", listniu);
			result = ob.writeValueAsString(map);
		}
		return result;
	}
}
