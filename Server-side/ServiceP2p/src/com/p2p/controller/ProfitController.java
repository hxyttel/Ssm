package com.p2p.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Detail;
import com.p2p.pojo.Profit;
import com.p2p.pojo.Users;
import com.p2p.services.DetailService;
import com.p2p.services.FabiaoService;
import com.p2p.services.InitiativeService;
import com.p2p.services.ProfitService;
import com.p2p.services.UsersService;

import redis.clients.jedis.Jedis;

@Controller
@RequestMapping("/profit")
public class ProfitController {

	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	@Resource(name="initiativeServiceImpl")
	private InitiativeService initiativeService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	
	@RequestMapping("list")
	public String list(Model model) {
		List<Profit> list=profitService.list();
		model.addAttribute("profitList", list);
		return "/ntps/tableprofit";
	}
	
	
	//用户每天收益接口
	@RequestMapping("add")
	public void add(HttpServletRequest request,HttpServletResponse response) throws IOException {
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
	        
	        Profit u=o.readValue(inputString.toString(), Profit.class);
	        
	        Users user=userService.getById(u.getUid());
	        user.setSumoney(user.getSumoney()+u.getPfmoney());
	        user.setSucanmoney(user.getSucanmoney()+u.getPfmoney());
	        
	        Users user1=userService.getById(1);
	        user1.setSumoney(user1.getSumoney()-u.getPfmoney());
	        user1.setSucanmoney(user1.getSucanmoney()-u.getPfmoney());
        
	        Detail d=new Detail();
       	 	d.setDmoney(u.getPfmoney());
			d.setDstate(2);
			d.setDsuid(u.getUid());
			d.setDtime(u.getPftime());
			d.setDtype("投标收益");
			//d.setDorder(u.get);
			
			 Detail d1=new Detail();
       	 	d1.setDmoney(u.getPfmoney());
			d1.setDstate(2);
			d1.setDsuid(1);
			d1.setDtime(u.getPftime());
			d1.setDtype("投标垫付收益");
			
			profitService.add(u);
			userService.update(user);
			userService.update(user1);
			detailService.add(d);
			detailService.add(d1);
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
	
}
