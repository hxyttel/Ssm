package com.p2p.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
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
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Initiative;
import com.p2p.pojo.Repayment;
import com.p2p.pojo.Users;
import com.p2p.services.BankService;
import com.p2p.services.DetailService;
import com.p2p.services.FabiaoService;
import com.p2p.services.InitiativeService;
import com.p2p.services.RepayServices;
import com.p2p.services.UsersService;

@Controller
@RequestMapping("/repayment")
public class RepayController {
		
	@Resource(name="repayServiceImpl")
	private RepayServices repayServices;
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	@Resource(name="initiativeServiceImpl")
	private InitiativeService initiativeService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	@Resource(name="bankServiceImpl")
	private BankService bankService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Repayment> listre = repayServices.list();
		model.addAttribute("listre", listre);
		return "/ntps/table-repayment";
	}
	@RequestMapping("/listLike")
	public String listLike(Model model,Repayment repayment) {
		List<Repayment> listre = repayServices.listLike(repayment);
		model.addAttribute("listre", listre);
		return "/ntps/table-repayment";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		repayServices.delete(id);
		return "redirect:/repayment/list";
	}
	
	@RequestMapping("/update")
	public String update(Repayment repayment) {
		repayServices.update(repayment);
		return "redirect:/repayment/list";
	}
	//还款
	@RequestMapping("add")
	public void add(HttpServletRequest request,HttpServletResponse response) throws IOException{
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
	        
	        
	        //事物开始。。。。。。。。。。。。。。。
	        
	        Repayment u=o.readValue(inputString.toString(), Repayment.class);
	        
	        //根据订单号查询是否有这个还款订单号
	        Repayment repay=repayServices.getByOrder(u.getRorder());
	        
	        if(repay==null) {
	        	repayServices.add(u);
	        }else if(repay!=null) {
	        	repay.setRmoeny(repay.getRmoeny()+u.getRmoeny());
	        	repay.setRhandmoney(repay.getRhandmoney()+u.getRmoeny());
	        	repayServices.update(repay);
	        }
	        
	        Users user=userService.getById(u.getRsuid());
        	user.setSucanmoney(user.getSucanmoney()-u.getRmoeny());
        	user.setSumoney(user.getSumoney()-u.getRmoeny());
        	userService.update(user);
        	
        	if(u.getRhandmoney()!=0) {
        		Users user1=userService.getById(1);
            	user1.setSucanmoney(user1.getSucanmoney()+u.getRhandmoney());
            	user1.setSumoney(user1.getSumoney()+u.getRhandmoney());
            	userService.update(user1);
            	Detail d1=new Detail();
            	d1.setDmoney(u.getRmoeny());
     			d1.setDstate(2);
     			d1.setDsuid(1);
     			d1.setDtime(u.getRtime());
     			d1.setDtype("发标还款手续费");
     			d1.setDorder(u.getRorder());
     			detailService.add(d1);
        	}
        	
	        Detail d=new Detail();
       	 	d.setDmoney(u.getRmoeny());
			d.setDstate(2);
			d.setDsuid(u.getRsuid());
			d.setDtime(u.getRtime());
			d.setDtype("发标还款");
			d.setDorder(u.getRorder());
			
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
	
	//还款逾期
	@RequestMapping("backlater")
	public void backlater(HttpServletRequest request,HttpServletResponse response) throws IOException{
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
	        
	        
	        //事物开始。。。。。。。。。。。。。。。
	        
	        Repayment u=o.readValue(inputString.toString(), Repayment.class);
	        
	        //根据订单号查询是否有这个还款订单号
	        Repayment repay=repayServices.getByOrder(u.getRorder());
	        if(repay==null) {
	        	repayServices.add(u);
	        }else if(repay!=null) {
	        	repay.setRmoeny(repay.getRmoeny()+u.getRmoeny());
	        	repayServices.update(repay);
	        }
	        //平台垫付逾期金额
	        Users user=userService.getById(1);
        	user.setSucanmoney(user.getSucanmoney()-u.getRmoeny());
        	user.setSumoney(user.getSumoney()-u.getRmoeny());
        	
        	userService.update(user);
	        Detail d=new Detail();
       	 	d.setDmoney(u.getRmoeny());
			d.setDstate(2);
			d.setDsuid(1);
			d.setDtime(u.getRtime());
			d.setDtype("逾期代替还款");
			d.setDorder(u.getRorder());
			
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
		
	//处理还款逾期
	@RequestMapping("resolveLater")
	public void resolveLater(HttpServletRequest request,HttpServletResponse response) throws IOException{
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
	        
	        //事物开始。。。。。。。。。。。。。。。
	        
	        Repayment u=o.readValue(inputString.toString(), Repayment.class);
	        
	        //平台收取垫付逾期金额
	        Users user=userService.getById(1);
        	user.setSucanmoney(user.getSucanmoney()+u.getRmoeny());
        	user.setSumoney(user.getSumoney()+u.getRmoeny());
        	
        	userService.update(user);
	        Detail d=new Detail();
       	 	d.setDmoney(u.getRmoeny());
			d.setDstate(2);
			d.setDsuid(1);
			d.setDtime(u.getRtime());
			d.setDtype("收取逾期代替还款");
			d.setDorder(u.getRorder());
			
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
	public Object openUserEdit(String rid){
		Integer id = Integer.parseInt(rid);
		Repayment repayment = repayServices.getById(id);
		return repayment;
	}
	
	
}
