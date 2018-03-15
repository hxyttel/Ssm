package com.p2p.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.p2p.pojo.Users;
import com.p2p.services.BankService;
import com.p2p.services.UsersService;
import com.p2p.util.BankUtil;

@Controller
@RequestMapping("/bank")
public class BankedController {

	@Resource(name="bankServiceImpl")
	private BankService bankService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	
	@RequestMapping("/list")
	public String list(Model model,Bank bank){
		List<Bank> bankList = bankService.listLike(bank);
		model.addAttribute("bankList", bankList);
		return "/ntps/table-dynamic";
	}
	//解绑银行卡
	@RequestMapping("/delete")
	public void delete(HttpServletRequest request,HttpServletResponse response) throws IOException{
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
	        //Map map=new HashMap<>();
	        
	        Bank bank=o.readValue(inputString.toString(), Bank.class);
	        bankService.delbank(bank.getBcode());
	              
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
	@RequestMapping("/update")
	public String update(Bank bank){
		bankService.update(bank);
		return "redirect:/bank/list";
	}
	//绑定银行卡
	@RequestMapping("/add")
	public String add(HttpServletRequest request,HttpServletResponse response) throws IOException {
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
	        //Map map=new HashMap<>();
	        
	        Bank bank=o.readValue(inputString.toString(), Bank.class);
	        //System.out.println("接收的报文为= "+u);
	        Bank b=bankService.selectBankCard(bank.getBcode());
	        if(b==null) {
	        	Users user=userService.getById(bank.getBsuid());
		        bank.setBcard(user.getSucard());
		        bank.setBname(user.getSuname());
		        bank.setBphone(user.getSuphone());
		        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
		        bank.setBtime(sf.format(new Date()));
		        bankService.add(bank);
	        }
	        
	              
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
		//bankService.add(bank);
		return "redirect:/bank/list";
		
	}
	@RequestMapping("bankType")
	@ResponseBody
	public Map<String, Object> banktype(String bank) {
		BankUtil bk=new BankUtil();
		 String name = bk.getNameOfBank(bank);
		 Map<String, Object> map = new HashMap<>();
		 map.put("name", name);
		 return map;
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String bid){
		Integer id = Integer.parseInt(bid);
		Bank bank = bankService.getById(id);
		return bank;
	}
}
