package com.p2p.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Bank;
import com.p2p.pojo.Cash;
import com.p2p.pojo.Users;
import com.p2p.services.BankService;
import com.p2p.services.CashService;
import com.p2p.services.UsersService;

@Controller
@RequestMapping("/cash")
public class CashController {
	
	@Resource(name="cashServiceImpl")
	private CashService cashService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="bankServiceImpl")
	private BankService bankService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Cash> listcash = cashService.list();
		model.addAttribute("listcash", listcash);
		return "/ntps/table-cash";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		cashService.delete(id);
		return "redirect:/cash/list";
	} 
	
	@RequestMapping("/update")
	public String update(Cash cash) {
		cashService.update(cash);
		Users u=userService.getById(cash.getCsuid());
		u.setSumoney(u.getSumoney()-cash.getCmoeny());
		u.setSucanmoney(u.getSucanmoney()-cash.getCmoeny());
		userService.update(u);
		Bank b=bankService.selectBankCard(cash.getCcard());
		b.setBmoney(b.getBmoney()+cash.getCmoeny());
		bankService.update(b);
		return "redirect:/cash/list";
	}
	
	@RequestMapping("/add")
	public String add(Cash cash) {
		cashService.add(cash);
		return "redirect:/cash/list";
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String cid){
		Integer id = Integer.parseInt(cid);
		Cash cash  = cashService.getById(id);
		return cash;
	}
	
}
