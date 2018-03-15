package com.p2p.controller.front;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.Bid;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Moneyrecord;
import com.p2p.pojo.Profit;
import com.p2p.pojo.User;
import com.p2p.service.back.BidService;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.ProfitService;
import com.p2p.util.SendServiceUtil;
@Controller
public class ProfitController {
	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	@Resource(name="bidServiceImpl")
	private BidService bidService;
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	@Resource(name="moneyrecordServiceImpl")
	private MoneyrecordServiece moneyrecordServiece;
	
	@RequestMapping("addProfit")
	public void addProfit() throws Exception {
		
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=new Date();
		//查询所有发标
		List<Fabiao> listFabiao=fabiaoService.getAllModel();
		for(Fabiao fabiao:listFabiao) {
			Date date2=df.parse(fabiao.getFhuanend());
			//判断是否是还款标
			if(fabiao.getFstatus()==2) {
				//判断是否在收益期内
				if(date.getTime()<date2.getTime()) {
					//根据标的订单号去查询投标人
					Bid initiative=new Bid();
					initiative.setBfid(fabiao.getFid());
					List<Bid> bidlist=bidService.getBidlist(initiative);
					for(Bid init:bidlist) {
						//根据用户id查询出用户的对象
						User us=new User();
						us.setUid(init.getUid());
						User user=iUserService.getModel(us);
						
						//计算收益的天数	1天=1*24*60*60*1000
						
						Date d1=df.parse(fabiao.getFhuanend());
						Date d2=df.parse(fabiao.getFendtime());
						int day=(int)(d1.getTime()-d2.getTime())/86400000;
						
						//拿出计算总收益的一半做为用户每天的收益
						double money=fabiao.getFmoney().doubleValue()*(fabiao.getFroe().doubleValue()+fabiao.getFincrease().doubleValue())*0.5;
						
						//计算每天应该拿出多少钱作为用户的收益
						double everydayMoney=Math.round(money/day*100)/100;
						
						//每个用户所投金额所占的百分比
						double everyoneRoe=init.getBmoney().doubleValue()/fabiao.getFmoney().doubleValue();
						
						//每个用户每天得到的收益
						double everymoney=Math.round(everyoneRoe*everydayMoney*100)/100;
						
						//获取到用户的余额并且给用户加上收益
						user.setUbalance(user.getUbalance()+everymoney);
						
						//给收益表插入数据
						Profit profit=new Profit();
						profit.setPfmoney(everymoney);
						profit.setPfmoneywhere(fabiao.getFpart());
						profit.setPftime(df.format(new Date()));
						profit.setUid(user.getUid());
						
						//给资金明细插入数据
						Moneyrecord detail = new Moneyrecord();
						detail.setMrwastemoney(everymoney);
						detail.setUid(user.getUid());
						detail.setMrwasttime(df.format(new Date()));
						detail.setMrdetail("资金明细");
						
						//发送收益请求
						int count=SendServiceUtil.list(profit, "119.23.55.22/ServiceP2p/profit/add");
						if(count==1) {
							//修改数据库
							moneyrecordServiece.addModel(detail);
							profitService.addModel(profit);
							iUserService.update(user);
						}
					}
				}
			}
		}
	}
	
}
