package com.p2p.controller.front;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
/**
 * 操作人:汪栋才
 * 操作时间:2017-1-14
 * 操作前台用户投标的Controller
 * */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.controller.back.SendMsgUtil;
import com.p2p.pojo.Bid;
import com.p2p.pojo.BidServet;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.FabiaoP2p;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.User;
import com.p2p.pojo.Users;
import com.p2p.pojo.Uservouch;
import com.p2p.service.back.BidService;
import com.p2p.service.back.MessageUtilService;
import com.p2p.service.back.RedmoneyService;
import com.p2p.service.back.SendMsgService;
import com.p2p.service.back.UservouchService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.util.MessageBenas;
import com.p2p.util.SendServiceUtil;
/**
 * 操作人:汪栋才
 * 操作时间:2017-1-15
 * 操作用户投资的Controller
 * */
@Controller
public class BidProjectController {
	
	@Resource(name="bidServiceImpl")
	private BidService bidService;
	
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	
	@Resource(name="redmoneyServiceImpl")
	private RedmoneyService redmoneyservice;
	
	@Resource(name="uservouchServiceImpl")
	private UservouchService uservouchService;
	
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	@Resource(name="sendMsgServiceImpl")
	private SendMsgService sendmsg;
	
	@Resource(name="messageUtilServiceImpl")
	private MessageUtilService messageUtil;
	
	
	@RequestMapping("investproject")
	@ResponseBody
	public Integer investProject(HttpServletRequest request,HttpSession session) throws Exception {
		
		
		
		
		Bid bid = new Bid();
		bid.setBfid(Integer.parseInt(request.getParameter("projectid")));
		bid.setUid(Integer.parseInt(request.getParameter("userid")));
		//取得用户投资钱数
		BigDecimal b1 = new BigDecimal(request.getParameter("investmoney"));
		//修改发标标的已投资钱数
		Fabiao fabiao = new Fabiao();
		fabiao.setFid(Integer.parseInt(request.getParameter("projectid")));
		fabiao = fabiaoService.getModel(fabiao);
		//取数据库已投钱数
		BigDecimal needMoney = fabiao.getFendmoney();
		//增加
		BigDecimal thisMoney = needMoney.add(b1);
		//取得可投钱数
		BigDecimal money = fabiao.getFmoney();
		
		
		
		
		
		
		/**
		 * 现在判断如果当前钱数是否大于总投资钱数
		 * 如果大于或者等于则不使用任何奖励
		 * */
	    int condition =	thisMoney.compareTo(money);
	    
		//order存的是用,号分开的类型和id
		String order = request.getParameter("ordermoney");
		BigDecimal ormoney = new BigDecimal("0.00");;
		if(order!=null && !order.equals("0,0")) {
			String[] idStr = order.split(",");
		
			for (int i = 0; i < idStr.length;i++) {
				String type = idStr[0];
				String id = idStr[1];
				//如果已投钱数小于总投资钱数
				if(condition==-1) {
					
						if(type.equals("1")) {
							//查询红包表
							Redmoney red = new Redmoney();
							red.setRid(Integer.parseInt(id));
							red = redmoneyservice.getModel(red);
							BigDecimal big1 = new BigDecimal(red.getRmoney());
							if(big1!=null) {
								ormoney = ormoney.add(big1);
							}
							b1.add(big1);
							//修改当期红包使用
							red.setRstart(1);
							redmoneyservice.update(red);
						}else {
							//查询贷金券
							Uservouch uv1 = new Uservouch();
							uv1.setUvid(Integer.parseInt(id));
							Uservouch uv = uservouchService.getModel(uv1);
							BigDecimal big1 = new BigDecimal(uv.getUvmoney());
							b1.add(big1);
							//判断是否大于0
							if(big1!=null) {
								ormoney = ormoney.add(big1);
							}
							//修改当期红包使用
							uv.setUstrat(1);
							uservouchService.update(uv);
						}
				 }
			}
		}
		// 标已投钱数=现在标已投钱数+用户投资钱数+奖励金
		thisMoney = needMoney.add(b1.add(ormoney));
		
		int condition1 =thisMoney.compareTo(money);
		System.out.println("判断是"+condition1);
		SendMsgUtil sUtil = new SendMsgUtil();
		Map<String,Object> orther = new HashMap<String,Object>();
		
		/**
		 * 如果标已投钱数大于可投钱数
		 * */
		BigDecimal duijie = new BigDecimal("0.00");
		User user = (User)session.getAttribute("user");
		
		
		/**
		 * 对接投标接口
		 * */
		int serviceIsOk= 0;
		BidServet bs = new  BidServet();
		bs.setIttitle(fabiao.getFtitle());
		bs.setItsuid(bid.getUid());
		bs.setItmoney(b1.add(ormoney).doubleValue());
		bs.setIttime(fabiao.getFendtime());
		bs.setItstate(fabiao.getFstatus());
		bs.setItorder(fabiao.getFcode());
		bs.setUser(new Users());
		try {
			//1成功   2失败
			serviceIsOk = SendServiceUtil.list(bs, "119.23.55.22/ServiceP2p/initiative/add");
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(serviceIsOk==1) {
			if(condition1==1) {
				fabiao.setFendmoney(thisMoney);
				BigDecimal  usermoney =  thisMoney.subtract(ormoney);
				BigDecimal all = new BigDecimal(user.getUbalance());
				BigDecimal thisusermoney = all.subtract(usermoney);
				user.setUbalance(thisusermoney.doubleValue());
				duijie.add(thisusermoney);
			}else {
				fabiao.setFendmoney(thisMoney);
				BigDecimal all = new BigDecimal(user.getUbalance());
				BigDecimal thisusermoney = all.subtract(b1);
				user.setUbalance(thisusermoney.doubleValue());
				duijie.add(thisusermoney);
			}
			iUserService.update(user);
			
			/**
			 * 发送短信验证码
			 * */
			orther.put("userphone",user.getUphone());
			orther.put("project",user.getUphone());
			orther.put("money",b1);
			try {
				sUtil.Send(user.getUphone(),MessageBenas.MSG_INVEST,orther,sendmsg,messageUtil);
			} catch (Exception e) {
				//日志打印
				e.printStackTrace();
			}
			
			
			fabiaoService.update(fabiao);
			//设置状态
			BigDecimal allmoney =  fabiao.getFmoney();
			BigDecimal tismoney = fabiao.getFendmoney();
			int ismax = tismoney.compareTo(allmoney);
			if(ismax==0 && ismax==1) {
				fabiao = new Fabiao();
				fabiao.setFid(bid.getBfid());
				fabiao.setFstatus(2);
				fabiaoService.update(fabiao);
				
				Fabiao fabiao2 =  new Fabiao();
				fabiao2.setFid(bid.getBfid());
				fabiao2 = fabiaoService.getModel(fabiao2);
				FabiaoP2p fabiaoP2p = new FabiaoP2p();
				fabiaoP2p.setFssuid(fabiao2.getUid());
				fabiaoP2p.setFstitle(fabiao2.getFtitle());
				fabiaoP2p.setFsorder(fabiao2.getFcode());
				fabiaoP2p.setFsmoney(fabiao2.getFmoney().doubleValue());
				fabiaoP2p.setFstime(fabiao2.getFendtime());
				fabiaoP2p.setFsstate(fabiao2.getFstatus());
				BigDecimal decimal = fabiao2.getFroe();
				BigDecimal dd = decimal.add(fabiao2.getFincrease());
				fabiaoP2p.setFsroe(dd.doubleValue());
				fabiaoP2p.setFshktime(fabiao2.getFendtime());
				int repaycount = SendServiceUtil.list(fabiaoP2p, "119.23.55.22/ServiceP2p/fabiao/success");
			}
			
			
			bid.setBmoney(b1);
			bid.setBtime(request.getParameter("strart"));
			bid.setBendtime(request.getParameter("end"));
			int issvae = bidService.addModel(bid);
			
			return issvae;
		}else {
			//失败
			return 0;
		}
		
	}
}
