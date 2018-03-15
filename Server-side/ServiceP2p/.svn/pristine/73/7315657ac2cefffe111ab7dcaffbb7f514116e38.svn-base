package com.p2p.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.UserBindCard;
import com.p2p.services.UserBindCardService;

@Controller
@RequestMapping("/userBindCard")
public class UserBindCardController {
	
	@Resource(name="userBindCardServiceImpl")
	private UserBindCardService ubcservice;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<UserBindCard> listubc = ubcservice.list();
		model.addAttribute("listubc", listubc);
		return "/ntps/table-userBindCard";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		ubcservice.delete(id);
		return "redirect:/userBindCard/list";
	}
	
	@RequestMapping("/update")
	public String update(UserBindCard userBindCard){
		ubcservice.update(userBindCard);
		return "redirect:/userBindCard/list";
	}
	
	@RequestMapping("/add")
	public String add(UserBindCard userBindCard) {
		ubcservice.add(userBindCard);
		return "redirect:/userBindCard/list";
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String uid){
		Integer id = Integer.parseInt(uid);
		UserBindCard userBindCard = ubcservice.getById(id);
		return userBindCard;
	}
	
}
