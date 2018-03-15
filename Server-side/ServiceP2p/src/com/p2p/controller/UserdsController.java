package com.p2p.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
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
import com.p2p.pojo.Users;
import com.p2p.services.BankService;
import com.p2p.services.UsersService;

@Controller
@RequestMapping("/user")
public class UserdsController {

	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="bankServiceImpl")
	private BankService bankService;

	
	@RequestMapping("/list")
	public String list(Model model,Users user){
		List<Users> userList = userService.listLike(user);
		model.addAttribute("userList", userList);
		return "ntps/table-user";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id){
		userService.delete(id);
		return "redirect:/user/list";
	}
	
	@RequestMapping("/update")
	public String update(Users users){
		userService.update(users);
		return "redirect:/user/list";
	}
	//增加资金托管用户接口
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
	        //Map map=new HashMap<>();
	        
	        Users u=o.readValue(inputString.toString(), Users.class);
	        System.out.println("接收的报文为= "+u);
	        Users use=userService.getById(u.getSuid());
	        if(use==null) {
	        	u.setSuip(ip);
	        	u.setSucanmoney(u.getSumoney());
	        	u.setSustopmoney(0);
	  	       	u.setId(u.getSuid());
	  	       	userService.add(u);
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
	   
	}
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String suid){
		Integer id = Integer.parseInt(suid);
		Users users = userService.getById(id);
		return users;
	}
}
