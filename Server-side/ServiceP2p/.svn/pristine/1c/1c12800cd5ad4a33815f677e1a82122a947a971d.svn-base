package com.p2p.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Bank;
import com.p2p.pojo.Detail;
import com.p2p.pojo.Recharge;
import com.p2p.pojo.Users;
import com.p2p.services.BankService;
import com.p2p.services.DetailService;
import com.p2p.services.RechargeService;
import com.p2p.services.UsersService;
import com.p2p.util.SendServiceUtil;

@Controller
@RequestMapping("/recharge")
public class RechargeController {
	
	@Resource(name="rechargeServiceImpl")
	private RechargeService rechargeService;
	@Resource(name="usersServiceImpl")
	private UsersService usersService;
	@Resource(name="bankServiceImpl")
	private BankService bankService;
	
	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Recharge> rechlist = rechargeService.list();
		model.addAttribute("rechlist", rechlist);
		return "/ntps/table-recharge";
	}
	
	@RequestMapping("/likelist")
	public String listlike(Model model,Recharge recharge) {
		List<Recharge> rechlist = rechargeService.listLike(recharge);
		model.addAttribute("rechlist", rechlist);
		return "/ntps/table-recharge";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		rechargeService.delete(id);
		return "redirect:/recharge/list";
	}
	
	/*@RequestMapping("/update")
	public String update(Recharge recharge,HttpServletRequest request) throws Exception {
		Users users=usersService.getById(recharge.getChsuid());
		users.setSumoney(users.getSumoney()+recharge.getChmoney());
		usersService.update(users);
		request.getSession().setAttribute("user", users);
		
		rechargeService.update(recharge);
		
		Bank ba = bankService.selectBankCard(recharge.getChbankid());
		ba.setBmoney(ba.getBmoney()-recharge.getChmoney());
		bankService.update(ba);
		
		Detail detail=new Detail();
		detail.setDorder(recharge.getChorder());
		Detail d=detailService.getDetail(detail);
		d.setDstate(2);
		detailService.update(d);
		
		
		SendServiceUtil.list(recharge, "192.168.137.98:8080/Finances/recharge/rechargereplay");
		return "redirect:/recharge/list";
	}
	*/
	@RequestMapping("/add")
	public void add(HttpServletRequest request,HttpServletResponse response) throws IOException {
		 String ip = request.getRemoteHost(); 
			
	     System.out.println("ip地址="+ip);
	      
	   
	     try {
	    	//获取接收的报文
			BufferedReader reader=request.getReader();
			
			String line="";
			
			 StringBuffer inputString = new StringBuffer();  
		        while ((line = reader.readLine()) != null) {  
		        inputString.append(line);  
		     }  
	       
		    //jackJson    
	        ObjectMapper o=new ObjectMapper();
	        
	        Recharge u=o.readValue(inputString.toString(), Recharge.class);
	        System.out.println("接收的报文为= "+u);
	        u.setChip(ip);
	        u.setChtype("银行卡");
	        
	        Detail d=new Detail();
	        d.setDip(ip);
	        d.setDmoney(u.getChmoney());
	        d.setDorder(u.getChorder());
	        d.setDstate(2);
	        d.setDsuid(u.getChsuid());
	        d.setDtime(u.getChtime());
	        d.setDtype("充值");
	        
	        Users users=usersService.getById(u.getChsuid());
			users.setSumoney(users.getSumoney()+u.getChmoney());
			users.setSucanmoney(users.getSucanmoney()+u.getChmoney());
			
			Bank ba = bankService.selectBankCard(u.getChbankid());
			ba.setBmoney(ba.getBmoney()-u.getChmoney());
			
			bankService.update(ba);
			usersService.update(users);
	        rechargeService.add(u);
	        detailService.add(d);
	        // 要返回的报文  
	       StringBuffer resultBuffer = new StringBuffer();  
	       resultBuffer.append("1");
	     
	       // 设置发送报文的格式  
	       response.setContentType("text/xml");  
	       response.setCharacterEncoding("UTF-8");  
	   
	       PrintWriter out = response.getWriter();  
	       out.println(resultBuffer.toString());  
	       out.flush();  
	       out.close();  
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			 StringBuffer resultBuffer = new StringBuffer();  
		       resultBuffer.append("2");
		     
		       // 设置发送报文的格式  
		       response.setContentType("text/xml");  
		       response.setCharacterEncoding("UTF-8");  
		   
		       PrintWriter out = response.getWriter();  
		       out.println(resultBuffer.toString());  
		       out.flush();  
		       out.close();  
			e.printStackTrace();
		}
	     
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String chid){
		Integer id = Integer.parseInt(chid);
		Recharge recharge = rechargeService.getById(id);
		return recharge;
	}
}
