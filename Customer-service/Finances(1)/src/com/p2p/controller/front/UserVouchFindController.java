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
import com.p2p.pojo.Uservouch;
import com.p2p.service.back.UservouchService;
import com.p2p.util.CodePassage;

/**
 * 前台个人中心代金券
 * 饶磊
 * 2018/1/11
 * */
@Controller
public class UserVouchFindController {
	
	@Resource(name="uservouchServiceImpl")
	private UservouchService uservouchService;
	
	/**
	 * 代金券页面controller
	 * */
	@RequestMapping(value="/tointerest")
	public String SelectDjq(HttpSession session,Model model) {
		User user = (User)session.getAttribute("user");
		if(user!=null) {
			List<Uservouch> listniu =  uservouchService.selectByNIU(user.getUid());
			listniu = CodePassage.makeUserVouchList(listniu);
			model.addAttribute("listniu", listniu);
			
			List<Uservouch> listuse = uservouchService.selectByUse(user.getUid());
			listuse = CodePassage.makeUserVouchList(listuse);
			model.addAttribute("listuse", listuse);
			
			List<Uservouch> listover = uservouchService.selectByOver(user.getUid());
			listover = CodePassage.makeUserVouchList(listover);
			model.addAttribute("listover", listover);
			
		}
		return "views/front/management/interestcoupon";
	}
	
	@RequestMapping("ajaxgetUservouch")
	@ResponseBody
	public String ajaxgetUservouch(HttpSession session) throws Exception {
		ObjectMapper ob = new ObjectMapper();
		Map<String,Object> map = new HashMap<String,Object>();
		String result = "";
		User user = (User)session.getAttribute("user");
		if(user!=null) {
			List<Uservouch> listniu =  uservouchService.selectByNIU(user.getUid());
			listniu = CodePassage.makeUserVouchList(listniu);
			map.put("listniu", listniu);
			result = ob.writeValueAsString(map);
		}
		return result;
	}
	
}
