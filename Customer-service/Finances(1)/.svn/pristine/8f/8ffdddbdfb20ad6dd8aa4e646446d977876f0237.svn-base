package com.p2p.controller.front;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.controller.back.SendMsgUtil;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.FabiaoP2p;
import com.p2p.pojo.Moneyrecord;
import com.p2p.pojo.Profit;
import com.p2p.pojo.RepayAllInfo;
import com.p2p.pojo.RepayService;
import com.p2p.pojo.Repayment;
import com.p2p.pojo.User;
import com.p2p.pojo.Userinfo;
import com.p2p.service.back.MessageUtilService;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.service.back.SendMsgService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.ProfitService;
import com.p2p.service.front.RepaymentService;
import com.p2p.service.front.UserInfoService;
import com.p2p.service.front.UserbackcardService;
import com.p2p.util.DateUtils;
import com.p2p.util.MessageBenas;
import com.p2p.util.SendServiceUtil;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

/**
 * 还款Controller
 * 
 * @author  lxj
 * */
@Controller
@RequestMapping(value="/repay")
public class RepaymentController {
	@Resource(name="repaymentServiceImpl")
	private RepaymentService repaymentService;  //还款
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;  //发标
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;  //用户
	@Resource(name="userInfoServiceImpl")
	private UserInfoService userInfoService;  //用户详情
	@Resource(name="moneyrecordServiceImpl")
	private MoneyrecordServiece moneyrecordServiece;  //资金详情记录
	@Resource(name="userbackcardServiceImpl") 
	private UserbackcardService userbackcardService;
	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	
	@Resource(name="sendMsgServiceImpl")
	private SendMsgService sendmsg;
	@Resource(name="messageUtilServiceImpl")
	private MessageUtilService messageUtil;
	
	/**
	 * 查询还款设置(进入还款页面)
	 * 根据用户id查询是否已设置还款方式
	 * 根据用户id  修改  发标方式(手动(分期期限,已还多少期)、自动在(一次性还完))
	 * */
	@RequestMapping(value="/repayverify")
	public ModelAndView getUserRepay(@RequestParam Integer uid,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		Fabiao fabiao = new Fabiao();
		fabiao.setUid(uid);
		Fabiao fa = fabiaoService.getModel(fabiao);
		
		//保存页面需要获取的字段
		RepayAllInfo getinfo = new RepayAllInfo();
		BigDecimal hundred = new BigDecimal("100");
		BigDecimal froe = new BigDecimal(fa.getFroe().toString());
		BigDecimal fincrease = new BigDecimal(fa.getFincrease().toString());  
		BigDecimal rate = new BigDecimal(froe.add(fincrease).toString());  //期利率(小数点形式)
		BigDecimal bidmoney = new BigDecimal(fa.getFmoney().toString());  //借款金额
		BigDecimal interest = new BigDecimal(bidmoney.multiply(rate).toString());  //总利息
		
		getinfo.setAllmongy(bidmoney.add(interest).setScale(2));  //还款总金额
		getinfo.setBidMoney(bidmoney);  //借款金额
		getinfo.setAllInterest(interest.setScale(2));  //总利息(免平台利息(1期)默认)
		getinfo.setAllrate(rate.multiply(hundred));  //总收益率(收益率+活动加息)
		
		if(fa.getFhkstype()!=null) {
			//自动还款
			if(fa.getFhkstype()==1) {
				getinfo.setRaterm(1);  //还款期限
				getinfo.setRastyle(1);  //还款方式(自动)
				
				BigDecimal raterm = new BigDecimal(getinfo.getRaterm().toString());
				BigDecimal allmoney = new BigDecimal(getinfo.getAllmongy().toString());
				
				getinfo.setTermmoney(allmoney.divide(raterm, 2, BigDecimal.ROUND_HALF_UP).setScale(2));  //每期偿还
				getinfo.setTermcount(fa.getFyhqx());  //已还期限
			}
			
			//手动还款
			if(fa.getFhkstype()==2) {
				getinfo.setRaterm(fa.getFfqqx());  //还款期限
				getinfo.setRastyle(2);  //还款方式(手动)
				
				BigDecimal raterm = new BigDecimal(getinfo.getRaterm().toString());
				
				if(getinfo.getRaterm()==6) {
					BigDecimal extra = new BigDecimal("0.01");
					BigDecimal rate6 = new BigDecimal(rate.add(extra).toString());  //期利率(小数点形式)
					getinfo.setAllrate(rate6.multiply(hundred).setScale(2));  //总收益率
					
					BigDecimal interest6 = new BigDecimal(bidmoney.multiply(rate6).toString());  //总利息
					getinfo.setAllInterest(interest6.setScale(2));  //总利息+平台利息(6期)
					
					getinfo.setAllmongy(bidmoney.add(interest6).setScale(2));
				}else if(getinfo.getRaterm()==12) {
					BigDecimal extra = new BigDecimal("0.012");
					
					BigDecimal rate12 = new BigDecimal(rate.add(extra).toString());  //期利率(小数点形式)
					getinfo.setAllrate(rate12.multiply(hundred).setScale(2));  //总收益率
					
					BigDecimal interest12 = new BigDecimal(bidmoney.multiply(rate12).toString());  //总利息
					getinfo.setAllInterest(interest12.setScale(2));  //总利息+平台利息(12期)
					
					getinfo.setAllmongy(bidmoney.add(interest12).setScale(2));
				}else if(getinfo.getRaterm()==24) {
					BigDecimal extra = new BigDecimal("0.015");
					
					BigDecimal rate24 = new BigDecimal(rate.add(extra).toString());  //期利率(小数点形式)
					getinfo.setAllrate(rate24.multiply(hundred).setScale(2));  //总收益率
					
					BigDecimal interest24 = new BigDecimal(bidmoney.multiply(rate24).toString());  //总利息
					getinfo.setAllInterest(interest24.setScale(2));  //总利息+平台利息(24期)
					
					getinfo.setAllmongy(bidmoney.add(interest24).setScale(2));
				}
				BigDecimal allmoney = new BigDecimal(getinfo.getAllmongy().toString());
				getinfo.setTermmoney(allmoney.divide(raterm, 2, BigDecimal.ROUND_HALF_UP).setScale(2));  //每期偿还
				getinfo.setTermcount(fa.getFyhqx());  //已还期限
			}
		}
		mv.addObject("getinfo", getinfo);
		
		if(fa!=null) {
			Repayment repay = new Repayment();
			repay.setFid(fa.getFid());
			Repayment repay1 = repaymentService.getModel(repay);
			if(repay1!=null) {
				mv.addObject("repays", repay1);
			}
		}
		
		User user = new User();
		user.setUid(uid);
		User us = iUserService.getModel(user);
		if(us!=null) {
			request.setAttribute("usermoney", us);
		}
		
		mv.addObject("fabiaos", fa);
		mv.addObject("pageName", "myinfo");
		mv.setViewName("views/front/user/repayverify");
		return mv;
	}
	
	/**
	 * 根据用户选择的还款类型计算每期还款金额
	 * @throws JsonProcessingException 
	 * */
	@RequestMapping(value="/getEachMoney")
	@ResponseBody
	public String getEachMoney(RepayAllInfo repayinfo) throws JsonProcessingException {
		Map<String,Object> repmap = new HashMap<>();
		ObjectMapper om = new ObjectMapper();
		try {
			if(repayinfo.getRastyle()==1) {
				repayinfo.setRaterm(1);  //还款期限
				
				BigDecimal raterm = new BigDecimal(repayinfo.getRaterm().toString());
				BigDecimal allmoney = new BigDecimal(repayinfo.getAllmongy().toString());
				
				repayinfo.setTermmoney(allmoney.divide(raterm, 2, BigDecimal.ROUND_HALF_UP).setScale(2));  //每期偿还
				repayinfo.setTermcount(0);  //已还期限
				repmap.put("count", 1);
			}
			if(repayinfo.getRastyle()==2) {
				BigDecimal hundred = new BigDecimal("100");
				 
				BigDecimal bidmoney = new BigDecimal(repayinfo.getBidMoney().toString());
				repayinfo.setRaterm(repayinfo.getRaterm());  //还款期限
				
				BigDecimal raterm = new BigDecimal(repayinfo.getRaterm().toString());
				
				if(repayinfo.getRaterm()==6) {
					repayinfo.setAllrate(repayinfo.getAllrate().divide(hundred, 2, BigDecimal.ROUND_HALF_UP).setScale(2));
					BigDecimal rate = new BigDecimal(repayinfo.getAllrate().toString());
					
					BigDecimal extra = new BigDecimal("0.01");
					
					BigDecimal rate6 = new BigDecimal(rate.add(extra).toString());  //期利率(小数点形式)
					repayinfo.setAllrate(rate6.multiply(hundred).setScale(2));  //总收益率
					
					BigDecimal interest6 = new BigDecimal(bidmoney.multiply(rate6).toString());  //总利息
					repayinfo.setAllInterest(interest6.setScale(2));  //总利息+平台利息(6期)
					
					repayinfo.setAllmongy(bidmoney.add(interest6).setScale(2));
				}else if(repayinfo.getRaterm()==12) {
					repayinfo.setAllrate(repayinfo.getAllrate().divide(hundred, 2, BigDecimal.ROUND_HALF_UP).setScale(2));
					BigDecimal rate = new BigDecimal(repayinfo.getAllrate().toString());
					BigDecimal extra = new BigDecimal("0.012");
					
					BigDecimal rate12 = new BigDecimal(rate.add(extra).toString());  //期利率(小数点形式)
					repayinfo.setAllrate(rate12.multiply(hundred).setScale(2));  //总收益率
					
					BigDecimal interest12 = new BigDecimal(bidmoney.multiply(rate12).toString());  //总利息
					repayinfo.setAllInterest(interest12.setScale(2));  //总利息+平台利息(12期)
					
					repayinfo.setAllmongy(bidmoney.add(interest12).setScale(2));
				}else if(repayinfo.getRaterm()==24) {
					repayinfo.setAllrate(repayinfo.getAllrate().divide(hundred, 2, BigDecimal.ROUND_HALF_UP).setScale(2));
					BigDecimal rate = new BigDecimal(repayinfo.getAllrate().toString());
					BigDecimal extra = new BigDecimal("0.015");
					
					BigDecimal rate24 = new BigDecimal(rate.add(extra).toString());  //期利率(小数点形式)
					repayinfo.setAllrate(rate24.multiply(hundred).setScale(2));  //总收益率
					
					BigDecimal interest24 = new BigDecimal(bidmoney.multiply(rate24).toString());  //总利息
					repayinfo.setAllInterest(interest24.setScale(2));  //总利息+平台利息(24期)
					
					repayinfo.setAllmongy(bidmoney.add(interest24).setScale(2));
				}
				BigDecimal allmoney = new BigDecimal(repayinfo.getAllmongy().toString());
				repayinfo.setTermmoney(allmoney.divide(raterm, 2, BigDecimal.ROUND_HALF_UP).setScale(2));  //每期偿还
				repayinfo.setTermcount(0);  //已还期限
				repmap.put("count", 2);
			}
			repmap.put("getinfos", repayinfo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		String repay = om.writeValueAsString(repmap);
		return repay;
	}
	
	/**
	 * 用户还款设置  及添加用户还款初始数据
	 * */
	@RequestMapping(value="/updateAndadd")
	@ResponseBody
	public int updateAndadd(RepayAllInfo allinfo,@RequestParam Integer uid) {
		int result = 0;
		Fabiao fabiao2 = new Fabiao();
		fabiao2.setUid(uid);
		Fabiao fa = fabiaoService.getModel(fabiao2);
		if(fa!=null) {
			try {
				Fabiao fabiao1 = new Fabiao();
				fabiao1.setFid(fa.getFid());
				fabiao1.setFfqqx(allinfo.getRaterm());
				fabiao1.setFyhqx(allinfo.getTermcount());
				fabiao1.setFhkstype(allinfo.getRastyle());
				int isUpdate = fabiaoService.update(fabiao1);
				if(isUpdate>0) {
					BigDecimal yhqx = new BigDecimal(allinfo.getTermcount());
					Repayment repayment = new Repayment();
					repayment.setFid(fa.getFid());  //发标人id
					repayment.setRmplan(allinfo.getTermmoney());  //计划还款(每期还款)
					
					if(allinfo.getTermcount()==0) {
						repayment.setRmface(yhqx);  //实际还款
					}else {
						repayment.setRmface(allinfo.getTermmoney().multiply(yhqx));  //实际还款
					}
					
					repayment.setRmwait(allinfo.getAllmongy().subtract(repayment.getRmface()));  //待还款
					repayment.setRmall(allinfo.getAllmongy());  //还款总金额
					repayment.setRmstate(fa.getFstatus());  //还款状态
					repayment.setRmstyle(allinfo.getRastyle());  //还款方式
					repayment.setFcode(fa.getFcode());  //发标订单号
					repayment.setRmoverdue(new BigDecimal(0.00));
					int isAdd = repaymentService.addModel(repayment);
					if(isAdd>0) {
						result = 1;
					}
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	/**
	 * 判断有没有到还款期
	 * @throws java.text.ParseException 
	 * */
	@RequestMapping(value="getRepayTime")
	@ResponseBody
	public int getRepayTime(@RequestParam Integer fid) throws java.text.ParseException {
		int result = 0;
		Fabiao fa = new Fabiao();
		fa.setFid(fid);
		Fabiao fabiao1 = fabiaoService.getModel(fa);
		if(fabiao1!=null) {
			SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date startTime = df.parse(fabiao1.getFhuanstat());
			Date endTime = df.parse(fabiao1.getFhuanend());
			
			int days = (int)((endTime.getTime()-startTime.getTime())/86400000);  //还款开始时间以及结束时间相隔天数
			
			//计算当前这期的还款开始时间
			Calendar ca = Calendar.getInstance();
			ca.add(Calendar.DATE, days*fabiao1.getFyhqx());// days为增加的天数，可以改变的
			
			Date nowStartTime = ca.getTime();
			
			if(new Date().getTime()<nowStartTime.getTime()) {
				result = 1;
			}
		}
		return result;
	}
	
	/**
	 * 修改用户还款金额
	 * @throws ParseException 
	 * @throws java.text.ParseException 
	 * */
	@RequestMapping(value="updateUserRepay")
	@ResponseBody
	public int updateUserRepay(@RequestParam Integer fid,@RequestParam BigDecimal bidMoney,@RequestParam BigDecimal repmoney,@RequestParam String phone) throws ParseException, java.text.ParseException {
		int result = 0;
		Fabiao fa = new Fabiao();
		fa.setFid(fid);
		Fabiao fabiao1 = fabiaoService.getModel(fa);
		if(fabiao1!=null) {
			try {
				RepayService reService = new RepayService();
				reService.setRsuid(fabiao1.getUid());
				reService.setRmoeny(repmoney.doubleValue());
				reService.setRtime(DateUtils.getDateTimeFormat(new Date()));
				reService.setRorder(fabiao1.getFcode());
				reService.setRstate(fabiao1.getFstatus());
				
				Double cleanmoney = 0.00;
				Double handmoney = 0.00;
				int term = fabiao1.getFfqqx();  //还款期限
				//计算每次平台收益
				if(term==6) {
					BigDecimal extra = new BigDecimal("0.01");
					BigDecimal money = bidMoney.multiply(extra).divide(new BigDecimal(term), 2, BigDecimal.ROUND_HALF_UP);
					handmoney = money.doubleValue();
				}else if(term==12) {
					BigDecimal extra = new BigDecimal("0.012");
					BigDecimal money = bidMoney.multiply(extra.divide(new BigDecimal(term),2, BigDecimal.ROUND_HALF_UP));
					handmoney = money.doubleValue();
				}else if(term==24) {
					BigDecimal extra = new BigDecimal("0.015");
					BigDecimal money = bidMoney.multiply(extra.divide(new BigDecimal(term),2, BigDecimal.ROUND_HALF_UP));
					handmoney = money.doubleValue();
				}
				//当下一期还款为最后一期还款时,计算平台收益金额
				if(fabiao1.getFfqqx()==fabiao1.getFyhqx()+1) {
					BigDecimal extra = new BigDecimal("0.5");
					BigDecimal money = bidMoney.multiply(extra).add(bidMoney).setScale(2);
					cleanmoney = money.doubleValue();
				}
				reService.setRhandmoney(handmoney+cleanmoney);
				
				//向服务端传递对象(url是服务端地址)
				int repaycount = SendServiceUtil.list(reService, "119.23.55.22/ServiceP2p/repayment/add");
				if(repaycount==1) {  //返回值为1时还款成功
					//先将用户余额扣除
					User nowuser = new User();
					nowuser.setUid(fabiao1.getUid());
					User nowuser1 = iUserService.getModel(nowuser);
					User nowuser2 = new User();
					nowuser2.setUid(nowuser1.getUid());
					//将计算结果保留两位小数
					String money = new java.text.DecimalFormat("#.00").format(nowuser1.getUbalance()-repmoney.doubleValue());
					nowuser2.setUbalance(Double.valueOf(money));
					int updateUser = iUserService.update(nowuser2);
					if(updateUser>0) {
						//平台获取本次还款的所有金额
						User platform = new User();
						platform.setUid(1);
						User platform1 = iUserService.getModel(platform);
						User platform2 = new User();
						platform2.setUid(platform1.getUid());
						Double money1 = platform1.getUbalance();
						platform2.setUbalance(money1+repmoney.doubleValue());
						iUserService.update(platform2);
						
						Repayment repay = new Repayment();
						repay.setFid(fid);
						Repayment repay1 = repaymentService.getModel(repay);  //根据发标人id获取还款表中数据
						Repayment repay2 = new Repayment();
						repay2.setRmid(repay1.getRmid());
						repay2.setRmface(repay1.getRmface().add(repmoney));
						repay2.setRmwait(repay1.getRmall().subtract(repay1.getRmface()));
						//如果待还款金额为0时,则为结清标
						if(repay2.getRmwait().intValue()<=0 && repay2.getRmoverdue().intValue()==0) {
							repay2.setRmstate(3);  
						}
						int updateRepay = repaymentService.update(repay2);  //修改还款表信息
						if(updateRepay>0) {
							Fabiao fabiao2 = new Fabiao();
							fabiao2.setFid(fid);
							fabiao2.setFyhqx(fabiao1.getFyhqx()+1);
							if(fabiao1.getFfqqx()==fabiao2.getFyhqx()) {
								fabiao2.setFstatus(repay2.getRmstate());
								//此标已结清(调用第三方结清标接口)
								FabiaoP2p fp=new FabiaoP2p();
								fp.setFsmoney(bidMoney.doubleValue());
								fp.setFsorder(fabiao1.getFcode());
								fp.setFssuid(fabiao1.getUid());
								fp.setFsstate(3);
								fp.setFsroe(fabiao1.getFroe().doubleValue()+fabiao1.getFincrease().doubleValue());
								fp.setFstitle(fabiao1.getFpart());
								SendServiceUtil.list(fp, "119.23.55.22/ServiceP2p/fabiao/backsuccess");
							}
							int updateFabiao = fabiaoService.update(fabiao2);
							if(updateFabiao>0) {
								Moneyrecord moneyrecord = new Moneyrecord();
								moneyrecord.setUid(fabiao1.getUid());
								Userinfo Userinfo =userInfoService.seleUserinfoByuid(fabiao1.getUid());
								moneyrecord.setMrdetail(Userinfo.getUiname()+"在亿信平台还款了"+repmoney+"元");
								moneyrecord.setMrwastemoney(repmoney.doubleValue());
								moneyrecord.setMrwasttime(DateUtils.getDateFormat(new Date()));
								moneyrecordServiece.addModel(moneyrecord);
								
								//向用户发送短信提示还款成功
								SendMsgUtil sUtil = new SendMsgUtil();
								Map<String,Object> orther = new HashMap<String,Object>();
								orther.put("repmoney",repmoney);
								sUtil.Send(phone,MessageBenas.MSG_REPAYMENT,orther,sendmsg,messageUtil);
								
								result = 1;
							}
						}
					}
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
		
	//自动还款
	@RequestMapping("automaticRepayment")
	public void automaticRepayment() throws Exception {
		List<Fabiao> listfabiao=fabiaoService.getAllModel();
		for(Fabiao fabiao:listfabiao) {
			if(fabiao.getFstatus()==2) {
				if(fabiao.getFhkstype()==1) {
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Date date1=new Date();
					Date date2=sdf.parse(fabiao.getFhuanend());
					if(date1.getTime()>date2.getTime()) {
						User u=new User();
						u.setUid(fabiao.getUid());
						User user=iUserService.getModel(u);
						//计算发标人需要还款多少钱
						double money=Math.round(fabiao.getFendmoney().doubleValue()*(1+fabiao.getFroe().doubleValue()+fabiao.getFincrease().doubleValue())*100)/100;
						//平台应还回利息的百分之50
						double moneyadmin=Math.round(fabiao.getFendmoney().doubleValue()*(fabiao.getFroe().doubleValue()+fabiao.getFincrease().doubleValue())*0.5*100)/100;
						if(user.getUbalance()>money|user.getUbalance()==money) {
							user.setUbalance(user.getUbalance()-money);
							
							User us=new User();
							us.setUid(1);
							User users=iUserService.getModel(us);
							users.setUbalance(users.getUbalance()+moneyadmin);
							//平台收益
							Profit profit=new Profit();
							profit.setPfmoney(moneyadmin);
							profit.setPfmoneywhere("发标还款(自动还款)");
							profit.setUid(1);
							profit.setPftime(sdf.format(new Date()));
							
							//资金记录
							Moneyrecord mon=new Moneyrecord();
							mon.setMrdetail("发标还款(自动还款)");
							mon.setMrwastemoney(money);
							mon.setMrwasttime(sdf.format(new Date()));
							mon.setUid(fabiao.getUid());
							
							Repayment repay=new Repayment();
							repay.setFcode(fabiao.getFcode());
							Repayment repayment=repaymentService.getModel(repay);
							repayment.setRmstate(3);
							BigDecimal moneys=new BigDecimal(money);
							BigDecimal plan=new BigDecimal("0.00");
							repayment.setRmface(moneys);
							repayment.setRmplan(plan);
							repayment.setRmwait(plan);
							repayment.setRmall(moneys);
							repayment.setRmoverdue(plan);
							
							RepayService rs=new RepayService();
							rs.setRhandmoney(moneyadmin);
							rs.setRmoeny(money);
							rs.setRorder(fabiao.getFcode());
							rs.setRstate(2);
							rs.setRsuid(fabiao.getUid());
							rs.setRtime(sdf.format(new Date()));
							
							int count=SendServiceUtil.list(rs, "119.23.55.22/ServiceP2p/repayment/add");
							if(count==1) {
								iUserService.update(user);
								iUserService.update(users);
								moneyrecordServiece.addModel(mon);
								repaymentService.update(repayment);
								profitService.addModel(profit);
								
								fabiao.setFstatus(3);
								fabiao.setFyhqx(1);
								fabiaoService.update(fabiao);
								
								FabiaoP2p fp=new FabiaoP2p();
								fp.setFsmoney(money);
								fp.setFsorder(fabiao.getFcode());
								fp.setFssuid(fabiao.getUid());
								fp.setFsstate(3);
								fp.setFsroe(fabiao.getFroe().doubleValue()+fabiao.getFincrease().doubleValue());
								fp.setFstitle(fabiao.getFpart());
								int con=SendServiceUtil.list(fp, "119.23.55.22/ServiceP2p/fabiao/backsuccess");
							}
						//如果余额里面少于还款金额，那么设置还款逾期
						}else if(user.getUbalance()<money) {
							fabiao.setFstatus(8);
							
							Repayment repay=new Repayment();
							repay.setFcode(fabiao.getFcode());
							Repayment repayment=repaymentService.getModel(repay);
							repayment.setRmstate(8);
							
							fabiaoService.update(fabiao);
							repaymentService.update(repayment);
						}
						
					}
				}
			}
		}
	}
	
	/**
	 * 逾期还款总额=逾期罚息+本期应还款金额(每期累加)
	 * 逾期罚息 ：逾期本金(每期应还款)*日罚息利率(天数不同逾期率不同)*逾期天数(今天到每期结束时间)
	 * 当到规定的时间未还款则按逾期处理
	 * 修改还款表中逾期金额,还款状态
	 * @throws ParseException 
	 * @throws java.text.ParseException 
	 * */
	@RequestMapping("OutTimeRepay")
	public void OutTimeRepay() throws ParseException, java.text.ParseException {
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=new Date();
		//查询所有还款标
		List<Fabiao> fabiaoList = fabiaoService.getRepayByStatus();
		
		//获取每个标开始时间(计算每期什么时候还款以及逾期时间)
		for(Fabiao fabiao:fabiaoList) {
			Date repayStartTime = df.parse(fabiao.getFhuanstat());  //还款开始时间
			Date repayEndTime = df.parse(fabiao.getFhuanend());  //还款结束时间
			int days = (int)((repayEndTime.getTime()-repayStartTime.getTime())/86400000);
			
			//根据发标人id获取还款表详情信息
			Repayment repayment = new Repayment();
			repayment.setFid(fabiao.getFid());
			Repayment repayment1 = repaymentService.getModel(repayment);
			
			if(fabiao.getFfqqx()>fabiao.getFyhqx()) {
				//当还款期限没有还清的情况下,计算每一期逾期金额
				BigDecimal overmoney = new BigDecimal("0.00");  //逾期总金额(初始化数据)
				for(int everycount=1;everycount<=fabiao.getFfqqx();everycount++) {
					//发标的已还期限与每次循环的期限(虚拟)做比较
					if(fabiao.getFyhqx()<everycount) {
						
						//计算当前这期的还款开始时间
						Calendar ca = Calendar.getInstance();
						ca.add(Calendar.DATE, days*everycount);// days为增加的天数，可以改变的
						
						repayEndTime = ca.getTime();  //具体那期的结束时间
						
						//如果当前时间大于下一次还款结束时间  则逾期
						if(date.getTime()<repayEndTime.getTime()) {
							int overDays = (int)((repayEndTime.getTime()-date.getTime())/(1* 24 * 60 * 60 * 1000));
							
							//根据超过的天数计算逾期金额(利率不一样)
							if(overDays<=180) {
								overmoney = overmoney.add(repayment1.getRmplan().add(repayment1.getRmplan().multiply(new BigDecimal("0.001")).multiply(new BigDecimal(overDays))));
							}else if(180<overDays && overDays<360) {
								overmoney = overmoney.add(repayment1.getRmplan().add(repayment1.getRmplan().multiply(new BigDecimal("0.002")).multiply(new BigDecimal(overDays))));
							}else if(overDays>=360) {
								overmoney = overmoney.add(repayment1.getRmplan().add(repayment1.getRmplan().multiply(new BigDecimal("0.003")).multiply(new BigDecimal(overDays))));
							}
							
							repayment1.setRmstate(8);  //将此标标记为逾期标
							repayment1.setRmoverdue(overmoney);
							repaymentService.update(repayment1);
							
							fabiao.setFstatus(repayment1.getRmstate());
							fabiaoService.update(fabiao);
						}
					}
				}
				
			}
		}
	}
	
	/**
	 * 处理逾期金额
	 * @throws Exception 
	 * */
	@RequestMapping(value="HandleRepayMoney")
	@ResponseBody
	public int HandleRepayMoney(@RequestParam Integer fid,@RequestParam BigDecimal rmoverdue,@RequestParam String phone) throws Exception {
		int result = 0;
		Fabiao fa = new Fabiao();
		fa.setFid(fid);
		Fabiao fa1 = fabiaoService.getModel(fa);
		
		Repayment repay = new Repayment();
		repay.setFid(fid);
		Repayment repay1 = repaymentService.getModel(repay);
		if(repay1!=null) {
			RepayService repService = new RepayService();
			repService.setRsuid(fa1.getUid());
			repService.setRmoeny(rmoverdue.doubleValue());
			repService.setRorder(repay1.getFcode());
			int count = SendServiceUtil.list(repService, "119.23.55.22/ServiceP2p/repayment/resolveLater");
			if(count==1) {
				repay1.setRmoverdue(new BigDecimal("0.00"));
				repay1.setRmstate(3);
				int updateRepay = repaymentService.update(repay1);
				if(updateRepay>0) {
					//平台获取本次还款的所有金额
					User platform = new User();
					platform.setUid(1);
					User platform1 = iUserService.getModel(platform);
					User platform2 = new User();
					platform2.setUid(platform1.getUid());
					Double money1 = platform1.getUbalance();
					platform2.setUbalance(money1+rmoverdue.doubleValue());
					iUserService.update(platform2);
					
					fa1.setFstatus(repay1.getRmstate());
					int fabiaoUpdate = fabiaoService.update(fa1);
					if(fabiaoUpdate>0) {
						Moneyrecord moneyrecord = new Moneyrecord();
						moneyrecord.setUid(fa1.getUid());
						Userinfo Userinfo =userInfoService.seleUserinfoByuid(fa1.getUid());
						moneyrecord.setMrdetail(Userinfo.getUiname()+"在亿信平台还款了"+rmoverdue+"元");
						moneyrecord.setMrwastemoney(rmoverdue.doubleValue());
						moneyrecord.setMrwasttime(DateUtils.getDateFormat(new Date()));
						moneyrecordServiece.addModel(moneyrecord);
						
						//向用户发送短信提示还款成功
						SendMsgUtil sUtil = new SendMsgUtil();
						Map<String,Object> orther = new HashMap<String,Object>();
						orther.put("repmoney",rmoverdue);
						sUtil.Send(phone,MessageBenas.MSG_REPAYMENT,orther,sendmsg,messageUtil);
						
						result = 1;
					}
				}
			}
		}
		return result;
	}
	
}
