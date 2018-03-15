package com.p2p.controller.back;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.AuthebDetais;
import com.p2p.pojo.EmpTask;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Loan;
import com.p2p.pojo.Profit;
import com.p2p.pojo.User;
import com.p2p.service.back.AuthebDetaisService;
import com.p2p.service.back.BidService;
import com.p2p.service.back.EmpTaskService;
import com.p2p.service.back.LoanService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.ProfitService;
import com.p2p.util.ContextUtils;
import com.p2p.util.DateUtils;

/**
 * 操作人:胡孝玉
 * 操作类型:后台右部分的首页
 *
 */

@RequestMapping(value="backindex")
@Controller
public class IndexController {
	@Resource(name="authebDetaisServiceImpl")
	private AuthebDetaisService authebDetaisService;  //消息
	@Resource(name="bidServiceImpl")
	private BidService bidService;    //投标
	@Resource(name="loanServiceImpl")
	private LoanService loanService;    //借款
	
	//用户
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	//用户任务
	@Resource(name="empTaskServiceImpl")
	private EmpTaskService empTaskService;
	
	//收益表service
	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	
	//发标
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;

	
	
	/**
	 *  消息,投标、借款金额
	 * */
	@RequestMapping(value="indexall")
	public String indexall(HttpSession session) {
		List<AuthebDetais> authebDetais =authebDetaisService.getAllModel();
		session.setAttribute("audetailsSize", authebDetais.size());
		session.setAttribute("authebDetais", authebDetais);
		
		try {
			SimpleDateFormat dataTime = new SimpleDateFormat("yyyy-MM-dd");
			/*String maxLoanTime = loanService.getMaxStartTime(); */	
			String maxLoanTime = dataTime.format(new Date());//最大借款时间
			String minLoanTime = loanService.getMinStartTime();  //最小借款时间
			/*String maxBidTime = bidService.getMaxStartTime();  */
			String minBidTime = bidService.getMinStartTime();  //最小投标时间
			String maxBidTime = dataTime.format(new Date()); //最大投标时间
			if(minBidTime==null) {
				minBidTime = dataTime.format(new Date());;
			}
			if(minLoanTime==null) {
				minLoanTime = dataTime.format(new Date());;
			}
			
			Date maxLTime = DateUtils.ChuDate(maxLoanTime);
			Date minLTime = DateUtils.ChuDate(minLoanTime);
			Date maxBTime = DateUtils.ChuDate(maxBidTime);
			Date minBTime = DateUtils.ChuDate(minBidTime);
			
			Date maxTime = null;
			Date minTime = null;
			if(maxLTime.getTime()<maxBTime.getTime()) {
				maxTime = maxBTime;
			}else {
				maxTime = maxLTime;
			}
			if(minLTime.getTime()<minBTime.getTime()) {
				minTime = minLTime;
			}else {
				minTime = minBTime;
			}
			
			//获取两个时间段的每一天
			List<Date> dateList = DateUtils.getEveryDay(minTime, maxTime);
			
			List<Object> dateTimeList = new ArrayList<>();
			List<Object> moneyLoan = new ArrayList<>();
			List<Object> moneyBid = new ArrayList<>();
			for(int i=0;i<dateList.size();i++) {
				dateTimeList.add(dataTime.format(dateList.get(i)));
				//根据每一天查询  借款金额
				List<String> listLoanMoney = loanService.getMoneyByTime(dataTime.format(dateList.get(i)));
				if(listLoanMoney.size()!=0) {
					double loanmoney = 0.00;
					for(int l=0;l<listLoanMoney.size();l++) {
						double getloanmoney = Double.parseDouble(listLoanMoney.get(l));
						loanmoney = loanmoney+getloanmoney;
					}
					moneyLoan.add(loanmoney);
				}else {
					moneyLoan.add(0);
				}
				
				//根据每一天查询  投标金额
				List<String> listBidMoney = bidService.getMoneyByTime(dataTime.format(dateList.get(i)));
				if(listBidMoney.size()!=0) {
					double bidmoney = 0.00;
					for(int b=0;b<listBidMoney.size();b++) {
						double getbidmoney = Double.parseDouble(listBidMoney.get(b));
						bidmoney = bidmoney+getbidmoney;
					}
					moneyBid.add(bidmoney);
				}else {
					moneyBid.add(0.00);
				}
			}
			
			/**
			 * 统计
			 */
			//得到发标总数
			double AllBidMoney = 0.00;
			for (int i = 0; i < moneyBid.size(); i++) {
				Object obj =moneyBid.get(i);
				double str = (double) obj;
				AllBidMoney+=str;
			}
			session.setAttribute("AllBidMoney", AllBidMoney);
			
			//得到平台共注册人数
			List<User> allUser =iUserService.getAllModel(); 
			session.setAttribute("allUser",allUser.size());
			
			//得到当前平台的收益
			User u = new User();
			u.setUid(1);
			User user = iUserService.getModel(u);
			session.setAttribute("pintaiMoney", user.getUbalance());
			
			//得到平台的成功的发标数
			List<Fabiao> fabiaoSuccess = fabiaoService.selectByStatus();
			session.setAttribute("fabiaoSuccess", fabiaoSuccess.size());
			
			SimpleDateFormat dateym = new SimpleDateFormat("yyyy-MM");
			//得到所有用户当前月所赚取的全部收益
			Profit profit = new Profit();
			profit.setPftime(dateym.format(new Date()));
			List<Profit> allProfit = profitService.seleByProfit(profit);
			BigDecimal allMoneyProfit = new BigDecimal("0.0");
			for (int i = 0; i < allProfit.size(); i++) {
				allMoneyProfit = allMoneyProfit.add(new BigDecimal(String.valueOf(allProfit.get(i).getPfmoney())));
			}
			
			//得到上一个月所有用户的赚取的全部收益
			Profit pt = new Profit();
			pt.setPftime(dateym.format(DateUtils.getmouthBefore(new Date(),1)));
			List<Profit> allProfitbefore = profitService.seleByProfit(pt);
			BigDecimal  allMoneyProfitbefore = new BigDecimal("0.0");
			BigDecimal bigcompnrateProfit = new BigDecimal("0.0");
			for (int i = 0; i < allProfitbefore.size(); i++) {
				//将Double转换成BigDecimal
				allMoneyProfitbefore = allMoneyProfitbefore.add(new BigDecimal(String.valueOf(allProfitbefore.get(i).getPfmoney())));
			
			}
			session.setAttribute("allMoneyProfitbefore", allMoneyProfitbefore);
			//判断除数不能作为0
			int chushu = allMoneyProfitbefore.compareTo(allMoneyProfit);
			//上个月与当前月的利率
			if(chushu==0) {
				 bigcompnrateProfit = new BigDecimal("0.0");
			}
			else {
				 bigcompnrateProfit = allMoneyProfitbefore.divide(allMoneyProfit, 10,BigDecimal.ROUND_HALF_DOWN);
				
			}
			String compnrateProfit =  ContextUtils.parsePercent(bigcompnrateProfit.toString());
			session.setAttribute("compnrateProfit", compnrateProfit);
			
			Loan loan = new Loan();
			loan.setLtime(dateym.format(new Date()));
			List<Loan> loanlist = loanService.seleByLoan(loan);
			Double AllLoan = 0.0;
			for (int i = 0; i < loanlist.size(); i++) {
				AllLoan+=loanlist.get(i).getLmoney();
			}
			session.setAttribute("AllLoanMoney", AllLoan);
			
			
			session.setAttribute("allMoneyProfit",allMoneyProfit);
			ObjectMapper om = new ObjectMapper();
			//转换成json对象
			String sdateList = om.writeValueAsString(dateTimeList);
			String smoneyLoan = om.writeValueAsString(moneyLoan);
			String smoneyBid = om.writeValueAsString(moneyBid);
			
			//修改任务列表状态
			List<EmpTask> eTackList = empTaskService.getAllModel();
			for (int i = 0; i < eTackList.size(); i++) {
				String newDate = DateUtils.getDateFormat(new Date());
				String empTaskTime = dataTime.format(DateUtils.getDateFormat(eTackList.get(i).getEtendtime()));
				int result=newDate.compareTo(empTaskTime); //result是两个时间差多少天
				if(result>0) {
					EmpTask et = new EmpTask();
					et.setEtstatus(0);
					et.setEtid(eTackList.get(i).getEtid());
					empTaskService.update(et);
				}
			}
			//查询任务列表
			EmpTask empTask = new EmpTask();
			empTask.setEtendtime((DateUtils.getDateFormat(new Date())));
			empTask.setEtstarttime(DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),7)));
			
 			List<EmpTask> empTasskList = empTaskService.seleByEmpTask(empTask);
			session.setAttribute("empTasskList", empTasskList);
			
			//查询用户发标情况
			List<Fabiao> fabiaoList = new ArrayList<Fabiao>();
			List<Fabiao> List = fabiaoService.getAllModel();
			for (int i = 0; i < List.size(); i++) {
				Fabiao fabiao = new Fabiao();
				Date fendtime =DateUtils.getDateFormat(List.get(i).getFendtime());
				fabiao.setFendtime(dataTime.format(fendtime));
				fabiao.setUiname(List.get(i).getUiname());
				fabiao.setFstatus(List.get(i).getFstatus());
				fabiao.setFendmoney(List.get(i).getFendmoney());
				fabiao.setFmoney(List.get(i).getFmoney());
				//取完成率
				 BigDecimal bigcompnrate = List.get(0).getFendmoney().divide(List.get(0).getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				fabiaoList.add(fabiao);
			}
			session.setAttribute("fabiaoList", fabiaoList);
 			
			session.setAttribute("dateTime", sdateList);
			session.setAttribute("moneyLoan", smoneyLoan);
			session.setAttribute("moneyBid", smoneyBid);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "views/back/index";
	
	}
	/**
	 * 添加任务发布表
	 * */
	@RequestMapping(value="addEmpTask")
	@ResponseBody
	private int addEmpTask(EmpTask empTask) {
		empTask.setEtstarttime(DateUtils.getDateFormat(new Date()));
		empTask.setEtstatus(0);
		int count = empTaskService.addModel(empTask);
		return count;
	}
	
	
}
