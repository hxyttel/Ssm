package com.p2p.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Detail;
import com.p2p.services.DetailService;

@Controller
@RequestMapping("/detail")
public class DetailController {

	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<Detail> detailList = detailService.list();
		model.addAttribute("detailList", detailList);
		return "/ntps/table-detail";
	}
	
	@RequestMapping("/listLike")
	public String listlike(Model model,Detail detail){
		List<Detail> detailList = detailService.listLike(detail);
		model.addAttribute("detailList", detailList);
		return "/ntps/table-detail";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id){
		detailService.delete(id);
		return "redirect:/detail/list";
	}
	@RequestMapping("/update")
	public String update(Detail detail){
		detailService.update(detail);
		return "redirect:/detail/list";
	}
	@RequestMapping("/add")
	public String add(Detail detail) {
		detailService.add(detail);
		return "redirect:/detail/list";
		
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String did){
		Integer id = Integer.parseInt(did);
		Detail detail = detailService.getById(id);
		return detail;
	}
}
