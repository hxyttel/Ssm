package com.p2p.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Loans;
import com.p2p.services.LoansService;

@Controller
@RequestMapping("/loans")
public class LoansController {
	
	@Resource(name="loansServiceImpl")
	private LoansService loansService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Loans> lloans = loansService.list();
		model.addAttribute("lloans", lloans);
		return "/ntps/table-Loans";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		loansService.delete(id);
		return "redirect:/loans/list";
	}
	
	@RequestMapping("/update")
	public String update(Loans loans) {
		loansService.update(loans);
		return "redirect:/loans/list";
	}
	
	@RequestMapping("/add")
	public String add(Loans loans) {
		loansService.add(loans);
		return "redirect:/loans/list";
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String lid){
		Integer id = Integer.parseInt(lid);
		Loans loans = loansService.getById(id);
		return loans;
	}
	
}
