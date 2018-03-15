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
import com.p2p.pojo.Initiative;
import com.p2p.pojo.Stopmoney;
import com.p2p.pojo.Users;
import com.p2p.services.DetailService;
import com.p2p.services.InitiativeService;
import com.p2p.services.StopmoneyService;
import com.p2p.services.UsersService;


@Controller
@RequestMapping("initiative")
public class InitiativeController {


	@Resource(name="initiativeServiceImpl")
	private InitiativeService initiativeService;
	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="stopmoneyServiceImpl")
	private StopmoneyService stopService;
	
	@RequestMapping("list")
	public String list(Model model) {
		List<Initiative> list=initiativeService.list();
		model.addAttribute("listInitiative", list);
		return "/ntps/table_initiative";
	}
	@RequestMapping("likeList")
	public String likeList(Initiative initiative,Model model) {
		List<Initiative> likeList=initiativeService.likeList(initiative);
		model.addAttribute("listInitiative",likeList);
		return "/ntps/table_initiative";
	}
	//投标接口
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
	        
	        Initiative u=o.readValue(inputString.toString(), Initiative.class);
	        System.out.println("接收的报文为= "+u);
	        u.setItip(ip);
	        
	        //资金记录
	        Detail d=new Detail();
	        d.setDip(ip);
	        d.setDmoney(u.getItmoney());
	        d.setDorder(u.getItorder());
	        d.setDstate(2);
	        d.setDsuid(u.getItstate());
	        d.setDtime(u.getIttime());
	        d.setDtype("投标");
	        
	        //用户资金冻结
	        Users user=userService.getById(u.getItsuid());
	        user.setSucanmoney(user.getSucanmoney()-u.getItmoney());
	        user.setSustopmoney(user.getSustopmoney()+u.getItmoney());
	        
	        //资金冻结增加
	        Stopmoney stop=stopService.getOrder(u.getItorder());
	        if(stop==null) {
	        	Stopmoney stops=new Stopmoney();
	        	stops.setSmmoney(u.getItmoney());
	        	stops.setSmorder(u.getItorder());
	        	stops.setSmstate(1);
	        	stops.setSmsuid(u.getItsuid());
	        	stops.setSmtype(u.getIttitle());
	        	stopService.add(stops);
	        }else {
	        	stop.setSmmoney(stop.getSmmoney()+u.getItmoney());
	        	stopService.update(stop);
	        }
	        
	        userService.update(user);
	        initiativeService.add(u);
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
}
