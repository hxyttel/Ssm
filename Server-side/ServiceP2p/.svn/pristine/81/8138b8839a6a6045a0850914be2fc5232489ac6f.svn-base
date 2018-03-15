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
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Detail;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Initiative;
import com.p2p.pojo.Repayment;
import com.p2p.pojo.Stopmoney;
import com.p2p.pojo.Users;
import com.p2p.services.DetailService;
import com.p2p.services.FabiaoService;
import com.p2p.services.InitiativeService;
import com.p2p.services.RepayServices;
import com.p2p.services.StopmoneyService;
import com.p2p.services.UsersService;

@Controller
@RequestMapping("/fabiao")
public class FabiaoController {
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	@Resource(name="stopmoneyServiceImpl")
	private StopmoneyService stopService;
	@Resource(name="initiativeServiceImpl")
	private InitiativeService initiativeService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="repayServiceImpl")
	private RepayServices repayServices;
	
	@RequestMapping("list")
	public String listFabiao(Model model) {
		List<Fabiao> listfabiao = fabiaoService.list();
		model.addAttribute("listfabiao", listfabiao);
		return "/ntps/table-fabiao";
	}
	@RequestMapping("listLike")
	public String listLike(Model model,Fabiao fa) {
		List<Fabiao> listfabiao = fabiaoService.listLike(fa);
		model.addAttribute("listfabiao", listfabiao);
		return "/ntps/table-fabiao";
	}
	//发标
	@RequestMapping("add")
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
	        
	        Fabiao u=o.readValue(inputString.toString(), Fabiao.class);
	        System.out.println("接收的报文为= "+u);
	        u.setFsip(ip);
	        
	        
	        Detail d=new Detail();
	        d.setDip(ip);
	        d.setDmoney(u.getFsmoney());
	        d.setDorder(u.getFsorder());
	        d.setDstate(2);
	        d.setDsuid(u.getFssuid());
	        d.setDtime(u.getFstime());
	        d.setDtype("发标");
	        
	        //冻结标开始
	        Stopmoney stop=new Stopmoney();
	        stop.setSmsuid(u.getFssuid());
	        stop.setSmmoney(u.getFsmoney());
	        stop.setSmorder(u.getFsorder());
	        stop.setSmtype(u.getFstitle());
	        stop.setSmstate(1);
	        
	        stopService.add(stop);
	        fabiaoService.add(u);
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
	//流标
	@RequestMapping("failed")
	public void update(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//根据传递过来对象里面的订单号去查询对象获取id，然后更改数据
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
		        
		        Fabiao u=o.readValue(inputString.toString(), Fabiao.class);
		        
		        Users user=userService.getById(u.getFssuid());
	        	//解冻投该标的钱
	        	user.setSucanmoney(user.getSucanmoney()+u.getFsmoney());
	        	user.setSustopmoney(user.getSustopmoney()-u.getFsmoney());
	        	userService.update(user);
	        	 //资金明细
	        	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		        Detail d=new Detail();
	        	d.setDmoney(u.getFsmoney());
	 			d.setDstate(2);
	 			d.setDsuid(user.getId());
	 			d.setDtime(sdf.format(new Date()));
	 			d.setDtype("流标退款");
	 			d.setDorder(u.getFsorder());
	 			detailService.add(d);
		      
		       Fabiao fa=fabiaoService.getByOrder(u.getFsorder());
		       fabiaoService.delete(fa.getFsid());
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
	
	//满标
	@RequestMapping("success")
	public void success(HttpServletRequest request,HttpServletResponse response) throws IOException {
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
		        
		        Fabiao u=o.readValue(inputString.toString(), Fabiao.class);
		        //更改标的状态
		        Fabiao fa=fabiaoService.getByOrder(u.getFsorder());
		        fa.setFsstate(7);
		        //把冻结标里面的冻结资金转给发标人
		        Stopmoney stop=stopService.getOrder(u.getFsorder());
		        //更改冻结资金为解冻
		        stop.setSmstate(2);
		       // stop.setSmmoney(0);
		        
		        Users user=userService.getById(u.getFssuid());
		        user.setSucanmoney(user.getSucanmoney()+stop.getSmmoney());
		        user.setSumoney(user.getSumoney()+stop.getSmmoney());
		        
		        //投标人冻结资金减少
		        Initiative initiative=new Initiative();
		        initiative.setItorder(u.getFsorder());
		        List<Initiative> init=initiativeService.likeList(initiative);
		        for(Initiative initia:init) {
		        	Users users=userService.getById(initia.getItsuid());
		        	users.setSumoney(users.getSumoney()-initia.getItmoney());
		        	users.setSustopmoney(users.getSustopmoney()-initia.getItmoney());
		        	userService.update(users);
		        }
		        
		      //资金明细
	        	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		        Detail d=new Detail();
	        	 d.setDmoney(stop.getSmmoney());
	 			d.setDstate(2);
	 			d.setDsuid(user.getId());
	 			d.setDtime(sdf.format(new Date()));
	 			d.setDtype("满标到账");
	 			d.setDorder(fa.getFsorder());
	 			detailService.add(d);
		        
		        userService.update(user);
		        fabiaoService.update(fa);
		        stopService.update(stop);
		        
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
	//结清标
	@RequestMapping("backsuccess")
	public void backsuccess(HttpServletRequest request,HttpServletResponse response) throws IOException {
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
		        
		        Fabiao u=o.readValue(inputString.toString(), Fabiao.class);
		        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		        //更改标的状态
		        Fabiao fa=fabiaoService.getByOrder(u.getFsorder());
		        fa.setFsstate(3);
		        //利息
		        double money=Math.round(fa.getFsmoney()*fa.getFsroe()*100)/100;
		        //总还款金额
		        double allmoney=money+fa.getFsmoney();
		        
		        //发表人金额减
	        	Users user=userService.getById(u.getFssuid());
	        	user.setSumoney(user.getSumoney()-allmoney);
	        	user.setSucanmoney(user.getSucanmoney()-allmoney);
	        	userService.update(user);
	        	
	        	//平台收回代付的收益
	        	Users users=userService.getById(1);
	        	users.setSucanmoney(users.getSucanmoney()+money*0.5);
	        	users.setSumoney(users.getSumoney()+money*0.5);
	        	userService.update(users);
	        	
	        	//投标人收回本金和利息
	        	Initiative initiative=new Initiative();
	        	initiative.setItorder(u.getFsorder());
	        	List<Initiative> init=initiativeService.likeList(initiative);
	        	for(Initiative in:init) {
	        		Users us=userService.getById(in.getItsuid());
	        		//投标的钱占总金额的百分比
	        		double reo=in.getItmoney()/fa.getFsmoney();
	        		//每个人应得利息为
	        		double lixi=Math.round(reo*money*0.5*100)/100;
	        		//每个人应得金额
	        		double moneys=in.getItmoney()+lixi;
	        		us.setSucanmoney(us.getSucanmoney()+moneys);
	        		us.setSumoney(us.getSumoney()+moneys);
	        		userService.update(us);
	        		
	        		//结标 Detail d=new Detail();
	        		 Detail d=new Detail();
	        	 	d.setDmoney(moneys);
		 			d.setDstate(2);
		 			d.setDsuid(us.getId());
		 			d.setDtime(sdf.format(new Date()));
		 			d.setDtype("结标退款和利息");
		 			d.setDorder(fa.getFsorder());
		 			detailService.add(d);
	        	}
	        	//资金明细
	        	
	        	
	        	 Detail d=new Detail();
	        	 d.setDmoney(u.getFsmoney());
	 			d.setDstate(2);
	 			d.setDsuid(user.getId());
	 			d.setDtime(sdf.format(new Date()));
	 			d.setDtype("结标退款");
	 			d.setDorder(fa.getFsorder());
	 			detailService.add(d);
	 			
	        	
	        	 Detail d1=new Detail();
	        	 d1.setDmoney(u.getFsmoney());
	 			d1.setDstate(2);
	 			d1.setDsuid(1);
	 			d1.setDtime(sdf.format(new Date()));
	 			d1.setDtype("结标返回预支付收益");
	 			d1.setDorder(u.getFsorder());
	 			
	 			detailService.add(d);
		        //把还款表更改为还款成功
		        Repayment repay=repayServices.getByOrder(u.getFsorder());
		        repay.setRstate(2);
		        repay.setRmoeny(allmoney);
		        
		        repayServices.update(repay);
		        fabiaoService.update(fa);
		        
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
	
	//结标给平台付款（平台预支付的收益费用）
	@RequestMapping("addmoneyAdmin")
	public void addmoney(HttpServletRequest request,HttpServletResponse response) throws IOException {
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
		        
		        Fabiao u=o.readValue(inputString.toString(), Fabiao.class);
		        
	        	Users user=userService.getById(1);
	        	user.setSumoney(user.getSumoney()+u.getFsmoney());
	        	user.setSucanmoney(user.getSucanmoney()+u.getFsmoney());
	        	userService.update(user);
	        	
	        	//资金明细
	        	
	 			
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
