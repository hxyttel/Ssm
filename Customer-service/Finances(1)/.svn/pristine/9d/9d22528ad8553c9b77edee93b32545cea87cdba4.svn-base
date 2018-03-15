package com.p2p.controller.front;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 提现controller
 * 2017-01-07
 * 操作人：邱雪云
 * */

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Moneyrecord;
import com.p2p.pojo.User;
import com.p2p.pojo.Userbackcard;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Withdrawals;
import com.p2p.pojo.WithdrawalsServiceP2p;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.service.back.WithdrawalsService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.UserInfoService;
import com.p2p.service.front.UserbackcardService;
import com.p2p.util.DateUtils;
import com.p2p.util.SendServiceUtil;

@Controller
@RequestMapping("front/withdrawals")
public class WithdrawalsfrontController {

	@Resource(name="withdrawalsServiceImpl")
	private WithdrawalsService withdrawalsService;
	@Resource(name="userbackcardServiceImpl")
	private UserbackcardService userBankcardService;
	@Resource(name="IUserServiceImpl")
	private IUserService userService;
	
	//资金记录表
	@Resource(name="moneyrecordServiceImpl")
	private MoneyrecordServiece moneyrecordServiece;
	
	@Resource(name="userInfoServiceImpl")
	private UserInfoService userInfoService;  //用户基本信息表

	
	
	//实现新增
	@RequestMapping(value="insertWithdrawals")
	@ResponseBody
	public int insertWithdrawals(Withdrawals withdrawals,HttpServletRequest request) throws Exception {
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		User user=(User)request.getSession().getAttribute("user");
		String wtime=sdf.format(new Date());
		withdrawals.setWstatus(2);
		withdrawals.setUid(user.getUid());
		withdrawals.setWtime(wtime);
		if(withdrawals.getWmoneytowhere()==null|withdrawals.getWmoneytowhere()=="") {
			Userinfo ui=(Userinfo)request.getSession().getAttribute("userinfo");
			Userbackcard ub=new Userbackcard();
			Integer uiid = ui.getUiid();
			ub.setUiid(uiid);
			Userbackcard ubc=userBankcardService.getModel(ub);
			withdrawals.setWmoneytowhere(ubc.getUbbackcardnum());
		}
		
		
		
		WithdrawalsServiceP2p ws=new WithdrawalsServiceP2p();
		ws.setCcard(withdrawals.getWmoneytowhere());
		ws.setCmoney(withdrawals.getWmoney());
		ws.setCnowMoney(withdrawals.getWnowMoney());
		ws.setCstate(withdrawals.getWstatus());
		ws.setCpoundage(withdrawals.getWfee());
		ws.setCtime(withdrawals.getWtime());
		SimpleDateFormat s=new SimpleDateFormat("yyyyMMddHHmmss");
		String time=s.format(new Date());
		String number=user.getUid().toString();
		String orderNumber = time+number;
		ws.setCsuid(user.getUid());
		ws.setCorder(orderNumber);
		
		int count=SendServiceUtil.list(ws, "119.23.55.22/ServiceP2p/withdrawals/add");
		
		if(count==1) {
			withdrawals.setWorder(orderNumber);
			withdrawalsService.addModel(withdrawals);
			user.setUbalance(user.getUbalance()-withdrawals.getWmoney());
			userService.update(user);
			
			//添加资金记录表
			Moneyrecord moneyrecord = new Moneyrecord();
			moneyrecord.setUid(withdrawals.getUid());
			Userinfo Userinfo =userInfoService.seleUserinfoByuid(withdrawals.getUid());
			moneyrecord.setMrdetail(Userinfo.getUiname()+"在亿信平台充值了"+withdrawals.getWmoney()+"元");
			moneyrecord.setMrwastemoney(Double.valueOf(withdrawals.getWmoney()));
			moneyrecord.setMrwasttime(DateUtils.getDateFormat(new Date()));
			moneyrecordServiece.addModel(moneyrecord);

			request.getSession().setAttribute("user", user);
			
		}
		return count;
	}
	
	//根据银行卡号查找判断是否存在
		@RequestMapping("selectBankcard")
		@ResponseBody
		public int selectBankcard(String wmoneytowhere,HttpServletRequest request) {
			int count=0;
			if(wmoneytowhere.equals(null)|wmoneytowhere.equals("")) {
				return 2;
			}
			Userbackcard userback=new Userbackcard();
			userback.setUbbackcardnum(wmoneytowhere);
			Userbackcard ubc=userBankcardService.selectBackcard(userback);
			if(ubc!=null) {
				Userinfo ui=(Userinfo)request.getSession().getAttribute("userinfo");
				Userbackcard ub=new Userbackcard();
				Integer uiid = ui.getUiid();
				ub.setUiid(uiid);
				Userbackcard ubk=userBankcardService.getModel(ub);
				if(ubk.getUbbackcardnum().equals(ubc.getUbbackcardnum())) {
					count=1;
				}else {
					count=2;
				}
			}
			return count;
		}
		@RequestMapping("updateWithdrawals")
		@ResponseBody
		public void updateWithdrawals(HttpServletRequest request,HttpServletResponse response) throws IOException {
			//判断请求报文是否来自代维系统的ip地址  
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
		        
		        WithdrawalsServiceP2p u=o.readValue(inputString.toString(), WithdrawalsServiceP2p.class);
		        System.out.println("接收的报文为= "+u);
		        Withdrawals with=new Withdrawals();
		        with.setWorder(u.getCorder());
		        with.setWstatus(u.getCstate());
		        withdrawalsService.update(with);
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
				 // 要返回的报文  
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
