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
import com.p2p.pojo.Transfer;
import com.p2p.pojo.Users;
import com.p2p.pojo.Withdrawals;
import com.p2p.services.BankService;
import com.p2p.services.CashService;
import com.p2p.services.DetailService;
import com.p2p.services.TransferService;
import com.p2p.services.UsersService;
import com.p2p.services.WithdrawalsService;
import com.p2p.util.SendServiceUtil;

@Controller
@RequestMapping("withdrawals")
public class WithdrawalsController {

	@Resource(name="withdrawalsServiceImpl")
	private WithdrawalsService withdrawalsService;
	@Resource(name="cashServiceImpl")
	private CashService cashService;
	@Resource(name="usersServiceImpl")
	private UsersService userService;
	@Resource(name="bankServiceImpl")
	private BankService bankService;
	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	@Resource(name="transferServiceImpl")
	private TransferService transferService;
	
	//提现
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
	        
	        Withdrawals u=o.readValue(inputString.toString(), Withdrawals.class);
	        System.out.println("接收的报文为= "+u);
	        u.setCip(ip);
	        
	        //更改提现人的余额
	        Users user=userService.getById(u.getCsuid());
			user.setSumoney(user.getSumoney()-u.getCmoney());
			user.setSucanmoney(user.getSucanmoney()-u.getCmoney());
			
			//更改平台的余额
			Users users=userService.getById(1);
			users.setSumoney(users.getSumoney()+u.getCpoundage());
			users.setSucanmoney(users.getSucanmoney()+u.getCpoundage());
			
			Detail d1=new Detail();
			d1.setDip(u.getCip());
			d1.setDmoney(u.getCpoundage());
			d1.setDstate(2);
			d1.setDsuid(1);
			d1.setDtime(u.getCtime());
			d1.setDtype("提现手续费");
			d1.setDip(u.getCip());
			d1.setDorder(u.getCorder());
			
			detailService.add(d1);
			
			Bank b=bankService.selectBankCard(u.getCcard());
			b.setBmoney(b.getBmoney()+u.getCmoney()-u.getCpoundage());
			
	      
	       
	       Detail d=new Detail();
			d.setDip(u.getCip());
			d.setDmoney(u.getCmoney()-u.getCpoundage());
			d.setDstate(2);
			d.setDsuid(u.getCsuid());
			d.setDtime(u.getCtime());
			d.setDtype("提现");
			d.setDip(u.getCip());
			d.setDorder(u.getCorder());
			
			detailService.add(d);
			withdrawalsService.add(u);
			userService.update(user);
			userService.update(users);
			bankService.update(b);
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
	
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Withdrawals> listcash = withdrawalsService.list();
		model.addAttribute("listcash", listcash);
		return "/ntps/table-cash";
	}
	
	@RequestMapping("/likeList")
	public String likeList(Model model,Withdrawals withdrawals) {
		List<Withdrawals> listcash = withdrawalsService.listLike(withdrawals);
		model.addAttribute("listcash", listcash);
		return "/ntps/table-cash";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		withdrawalsService.delete(id);
		return "redirect:/cash/list";
	} 
	
	/*@RequestMapping("/update")
	public String update(Withdrawals cash) throws Exception {
		
		Users u=userService.getById(cash.getCsuid());
		u.setSumoney(u.getSumoney()-cash.getCmoney());
		
		Bank b=bankService.selectBankCard(cash.getCcard());
		b.setBmoney(b.getBmoney()+cash.getCmoney()-cash.getCpoundage());
		
		Detail detail=new Detail();
		detail.setDorder(cash.getCorder());
		Detail d=detailService.getDetail(detail);
		d.setDstate(2);
		
		
		
		int with = SendServiceUtil.list(cash, "192.168.90.47:8080/Finances/front/withdrawals/updateWithdrawals");
		
		int bank = SendServiceUtil.list(b, "192.168.90.47:8080/Finances/idcard/updateBank");
		if(with==1&&bank==1) {
			bankService.update(b);
			detailService.update(d);
			userService.update(u);
			withdrawalsService.update(cash);
		}
		return "redirect:/withdrawals/list";
	}*/
	
	@RequestMapping("/getby")
	@ResponseBody
	public Object openUserEdit(String cid){
		Integer id = Integer.parseInt(cid);
		Withdrawals cash  = withdrawalsService.getById(id);
		return cash;
	}
	
	//定时器定时在规定范围内是否审核完提现
		public void withdrawalsSuccess() throws Exception {
			List<Withdrawals> list=withdrawalsService.list();
			for(Withdrawals withdrawals:list) {
				SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date d1=new Date();
				Date d2=df.parse(withdrawals.getCtime());
				//相减大于半个小时执行
				if(d1.getTime()-d2.getTime()>172800000) {
					if(withdrawals.getCstate()==1) {
						withdrawals.setCstate(3);
						Detail detail=new Detail();
						detail.setDorder(withdrawals.getCorder());
						Detail d=detailService.getDetail(detail);
						d.setDstate(3);
						withdrawalsService.update(withdrawals);
						detailService.update(d);
						SendServiceUtil.list(withdrawals, "192.168.137.98:8080/Finances/recharge/rechargereplay");
					}
				}
			}
		}
}
