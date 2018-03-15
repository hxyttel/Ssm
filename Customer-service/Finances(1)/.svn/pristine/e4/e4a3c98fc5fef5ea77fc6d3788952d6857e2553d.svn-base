package com.p2p.controller.front;


import java.math.BigDecimal;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.About;
import com.p2p.pojo.Area;
import com.p2p.pojo.Bid;
import com.p2p.pojo.City;
import com.p2p.pojo.Contact;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.MoneyDetail;
import com.p2p.pojo.Moneyrecord;
import com.p2p.pojo.Newsfocus;
import com.p2p.pojo.Notice;
import com.p2p.pojo.Profit;
import com.p2p.pojo.ProjectSelect;
import com.p2p.pojo.Provice;
import com.p2p.pojo.Repayment;
import com.p2p.pojo.Setupnatice;
import com.p2p.pojo.Sing;
import com.p2p.pojo.User;
import com.p2p.pojo.Userbackcard;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Video;
import com.p2p.service.back.AboutService;
import com.p2p.service.back.BidService;
import com.p2p.service.back.ContactService;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.service.back.VideoService;
import com.p2p.service.front.AddressService;
import com.p2p.service.front.BidfabiaoService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.MoneyDetailService;
import com.p2p.service.front.NewsfocusService;
import com.p2p.service.front.NoticeFontSrvice;
import com.p2p.service.front.ProfitService;
import com.p2p.service.front.RepaymentService;
import com.p2p.service.front.SetupnaticeService;
import com.p2p.service.front.SingService;
import com.p2p.service.front.UserInfoService;
import com.p2p.service.front.UserbackcardService;
import com.p2p.util.AddressUtils;
import com.p2p.util.ContextUtils;
import com.p2p.util.DateUtils;
import com.p2p.util.Page;
import com.p2p.util.YieldUtil;

/**
 * 开发人:杨嘉辉
 * 2017-11-13
 * 此conteroller是访问前台页面的
 * */
@Controller
public class FrontController {
	
	
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	
	@Resource(name="setupnaticeServiceImpl")
	private SetupnaticeService setupnaticeService;
	
	@Resource(name="contactServiceImpl")
	private ContactService contactService;
	

	@Resource(name="aboutServiceImpl")
	private AboutService aboutService;

	@Resource(name="userInfoServiceImpl")
	private UserInfoService userInfoService;

	
	@Resource(name="addressServiceImpl")
	private AddressService addressService;  //地址(省市县)
	
	@Resource(name="userbackcardServiceImpl") 
	private UserbackcardService userbackcardService;
	
	//收益表service
	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	
	//用户
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	@Resource(name="bidfabiaoServiceImpl")
	private BidfabiaoService bidService;
	
	@Resource(name="singServiceImpl")
	private SingService singService;
	
	//投资
	@Resource(name="bidServiceImpl")
	private BidService bidServices;
	
	//视频
	@Resource(name="videoServiceImpl")
	private VideoService videoservices;
	
	//新闻聚焦
	@Resource(name="newsfocusServiceImpl")
	private NewsfocusService newsfocusService;
	
	@Resource(name="noticeFontServiceImpl")
	private NoticeFontSrvice noticeFontSrvice;
	//奖励金
	@Resource(name="moneyrecordServiceImpl")
	private MoneyrecordServiece moneyrecordServiece;
	
	@Resource(name="repaymentServiceImpl")
	private RepaymentService repaymentService;
	
	@Resource(name="moneyDetailServiceImpl")
	private MoneyDetailService moneyDetailService;
	
	
	/**
	 * 头部的conteroller
	 * */
	@RequestMapping(value="/tohead")
	public String toheadIndex() {
		return "views/front/include/head";
	}
	
	/**
	 * 足部的conteroller
	 * */
	@RequestMapping(value="/tofoot")
	public String tofootIndex() {
		return "views/front/include/floot";	
	}
	
	/**
	 * 我要投资页面的conteroller(项目直投)
	 * */
	@RequestMapping(value="/toinvestzt")
	public String tofroninvest(Model model,ProjectSelect select,Integer pageNow) throws Exception{
		model.addAttribute("pageName", "invset");
		BidUtilController.setFabiao(fabiaoService);
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		//根据标类型获取总数
		int totalCount =  (int) fabiaoService.getProductsCount(null);
		//分页实现
		Page page ;  
		List<Fabiao> fabiaolist = new ArrayList<Fabiao>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        fabiaolist = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),null);  
	     } else {  
	        page = new Page(totalCount, 1);  
	        fabiaolist = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),null);  
	     }  
		
		 
		 
		
		List<Fabiao> fabiaolists = new ArrayList<Fabiao>(); 
		for(int i=0;i<fabiaolist.size();i++) {
			Fabiao fabiao = fabiaolist.get(i);
			fabiao.setFid(fabiaolist.get(i).getFid());
			fabiao.setFtitle(fabiaolist.get(i).getFtitle());
			fabiao.setUid(fabiaolist.get(i).getUid());
			fabiao.setFcode(fabiaolist.get(i).getFcode());
			fabiao.setFtype(fabiaolist.get(i).getFtype());
			fabiao.setFpart(fabiaolist.get(i).getFpart());
			fabiao.setFroe(fabiaolist.get(i).getFroe());
			fabiao.setFincrease(fabiaolist.get(i).getFincrease());
			fabiao.setFcontent(fabiaolist.get(i).getFcontent());
			fabiao.setFsituation(fabiaolist.get(i).getFsituation());
			fabiao.setFopinion(fabiaolist.get(i).getFopinion());
			fabiao.setFmoney(fabiaolist.get(i).getFmoney());
			fabiao.setFendmoney(fabiaolist.get(i).getFendmoney());
			fabiao.setFendtime(fabiaolist.get(i).getFendtime());
			fabiao.setFminmoney(fabiaolist.get(i).getFminmoney());
			fabiao.setFmaxmoney(fabiaolist.get(i).getFmaxmoney());
			fabiao.setFrate(fabiaolist.get(i).getFrate());
			fabiao.setFimage(fabiaolist.get(i).getFimage());
			fabiao.setForderimg(fabiaolist.get(i).getForderimg());
			fabiao.setFcontract(fabiaolist.get(i).getFcontract());
			fabiao.setFbidstatus(fabiaolist.get(i).getFbidstatus());
			fabiao.setFstatus(fabiaolist.get(i).getFstatus());
			fabiao.setFsecurity(fabiaolist.get(i).getFsecurity());
			fabiao.setFprocedures(fabiaolist.get(i).getFprocedures());
			fabiao.setFrepayment(fabiaolist.get(i).getFrepayment());
			
			//取完成率
			 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
			 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
			 fabiao.setCompnrate(compnrate);
			 
			//取结束时间
			String endtime = fabiaolist.get(i).getFendtime();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date2 = format.parse(endtime);
			//取两个时间的天数 
			int aa = DateUtils.differentDays(date3, date2);
			fabiao.setRematime(aa);
			
			//取投资万元收益
			String type = fabiao.getFrepayment();
			double syl = (fabiao.getFroe().add(fabiao.getFincrease())).doubleValue();
			if(type!=null && !type.equals("")) {
				fabiao.setYield(YieldUtil.getYield(fabiao.getFhuanstat(), fabiao.getFhuanend(), syl,10000,type));
			}
			fabiaolists.add(fabiao);
		}

		 //项目直投
		model.addAttribute("fabiaolist", fabiaolists);
		//把分页工具类添加进request
		model.addAttribute("page",page);
		return "views/front/investzt";
	}
	
	@RequestMapping("toinvestzq")
	public String toZQ(Model model) throws Exception{
		return "views/front/investzq";
	}
	
	
	//爱车贷
	@RequestMapping("toinvestche")
	public String toACD(Model model,Integer pageNow) throws Exception{
		
		model.addAttribute("pageName", "invset");
		BidUtilController.setFabiao(fabiaoService);
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
			
		//根据标类型获取总数
		int totalCount =  (int) fabiaoService.getProductsCount("爱车贷");
		//分页实现
		Page page ;  
		List<Fabiao> acd = new ArrayList<Fabiao>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        //现在模拟为两页
	        page.setPageSize(2);
	        acd = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"爱车贷");  
	     } else {  
	        page = new Page(totalCount, 1);  
	        acd = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"爱车贷");  
	     } 
		
		
		 List<Fabiao> acds = new ArrayList<Fabiao>(); 
			for(int i=0;i<acd.size();i++) {
				Fabiao fabiao = acd.get(i);
				fabiao.setFid(acd.get(i).getFid());
				fabiao.setFtitle(acd.get(i).getFtitle());
				fabiao.setUid(acd.get(i).getUid());
				fabiao.setFcode(acd.get(i).getFcode());
				fabiao.setFtype(acd.get(i).getFtype());
				fabiao.setFpart(acd.get(i).getFpart());
				fabiao.setFroe(acd.get(i).getFroe());
				fabiao.setFincrease(acd.get(i).getFincrease());
				fabiao.setFcontent(acd.get(i).getFcontent());
				fabiao.setFsituation(acd.get(i).getFsituation());
				fabiao.setFopinion(acd.get(i).getFopinion());
				fabiao.setFmoney(acd.get(i).getFmoney());
				fabiao.setFendmoney(acd.get(i).getFendmoney());
				fabiao.setFendtime(acd.get(i).getFendtime());
				fabiao.setFminmoney(acd.get(i).getFminmoney());
				fabiao.setFmaxmoney(acd.get(i).getFmaxmoney());
				fabiao.setFrate(acd.get(i).getFrate());
				fabiao.setFimage(acd.get(i).getFimage());
				fabiao.setForderimg(acd.get(i).getForderimg());
				fabiao.setFcontract(acd.get(i).getFcontract());
				fabiao.setFbidstatus(acd.get(i).getFbidstatus());
				fabiao.setFstatus(acd.get(i).getFstatus());
				fabiao.setFsecurity(acd.get(i).getFsecurity());
				fabiao.setFprocedures(acd.get(i).getFprocedures());
				fabiao.setFrepayment(acd.get(i).getFrepayment());
				
				//取完成率
				 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				 
				//取结束时间
				String endtime = acd.get(i).getFendtime();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date2 = format.parse(endtime);
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				
				//取投资万元收益
				String type = fabiao.getFrepayment();
				double syl = (fabiao.getFroe().add(fabiao.getFincrease())).doubleValue();
				if(type!=null && !type.equals("")) {
					fabiao.setYield(YieldUtil.getYield(fabiao.getFhuanstat(), fabiao.getFhuanend(), syl,10000,type));
				}
				acds.add(fabiao);
			}
			//爱车贷
			model.addAttribute("fabiaolistsafd", acds);
			//把分页工具类添加进request
			model.addAttribute("page",page);
			return "views/front/investche";
	}
	
	//爱房贷
	@RequestMapping("toinvestfang")
	public String toFANG(Model model,Integer pageNow) throws Exception{
		model.addAttribute("pageName", "invset");
		
		BidUtilController.setFabiao(fabiaoService);
		
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		//根据标类型获取总数
		int totalCount =  (int) fabiaoService.getProductsCount("爱房贷");
		//分页实现
		Page page ;  
		List<Fabiao> afd = new ArrayList<Fabiao>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        //现在模拟为两页
	        page.setPageSize(2);
	        afd = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"爱房贷");  
	     } else {  
	        page = new Page(totalCount, 1);  
	        afd = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"爱房贷");  
	     } 
		
		//爱房贷
		 List<Fabiao> afds = new ArrayList<Fabiao>(); 
			for(int i=0;i<afd.size();i++) {
				Fabiao fabiao = afd.get(i);
				fabiao.setFid(afd.get(i).getFid());
				fabiao.setFtitle(afd.get(i).getFtitle());
				fabiao.setUid(afd.get(i).getUid());
				fabiao.setFcode(afd.get(i).getFcode());
				fabiao.setFtype(afd.get(i).getFtype());
				fabiao.setFpart(afd.get(i).getFpart());
				fabiao.setFroe(afd.get(i).getFroe());
				fabiao.setFincrease(afd.get(i).getFincrease());
				fabiao.setFcontent(afd.get(i).getFcontent());
				fabiao.setFsituation(afd.get(i).getFsituation());
				fabiao.setFopinion(afd.get(i).getFopinion());
				fabiao.setFmoney(afd.get(i).getFmoney());
				fabiao.setFendmoney(afd.get(i).getFendmoney());
				fabiao.setFendtime(afd.get(i).getFendtime());
				fabiao.setFminmoney(afd.get(i).getFminmoney());
				fabiao.setFmaxmoney(afd.get(i).getFmaxmoney());
				fabiao.setFrate(afd.get(i).getFrate());
				fabiao.setFimage(afd.get(i).getFimage());
				fabiao.setForderimg(afd.get(i).getForderimg());
				fabiao.setFcontract(afd.get(i).getFcontract());
				fabiao.setFbidstatus(afd.get(i).getFbidstatus());
				fabiao.setFstatus(afd.get(i).getFstatus());
				fabiao.setFsecurity(afd.get(i).getFsecurity());
				fabiao.setFprocedures(afd.get(i).getFprocedures());
				fabiao.setFrepayment(afd.get(i).getFrepayment());
				
				//取完成率
				 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				 
				//取结束时间
				String endtime = afd.get(i).getFendtime();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date2 = format.parse(endtime);
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				
				//取投资万元收益
				String type = fabiao.getFrepayment();
				double syl = (fabiao.getFroe().add(fabiao.getFincrease())).doubleValue();
				if(type!=null && !type.equals("")) {
					fabiao.setYield(YieldUtil.getYield(fabiao.getFhuanstat(), fabiao.getFhuanend(), syl,10000,type));
				}
				
				afds.add(fabiao);
			}
			//爱房贷
			model.addAttribute("afds", afds);
			//把分页工具类添加进request
			model.addAttribute("page",page);
			return "views/front/investfang";
	}
	
	//消费金融
	@RequestMapping("toinvestjj")
	public String toXF(Model model,Integer pageNow) throws Exception{
		model.addAttribute("pageName", "invset");
		BidUtilController.setFabiao(fabiaoService);
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		//根据标类型获取总数
		int totalCount =  (int) fabiaoService.getProductsCount("消费基金");
		//分页实现
		Page page ;  
		List<Fabiao> xfjj = new ArrayList<Fabiao>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        //现在模拟为两页
	        page.setPageSize(2);
	        xfjj = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"消费基金");  
	     } else {  
	        page = new Page(totalCount, 1);  
	        xfjj = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"消费基金");  
	     } 
		
		 List<Fabiao> xfjjs = new ArrayList<Fabiao>(); 
			for(int i=0;i<xfjj.size();i++) {
				Fabiao fabiao = xfjj.get(i);
				fabiao.setFid(xfjj.get(i).getFid());
				fabiao.setFtitle(xfjj.get(i).getFtitle());
				fabiao.setUid(xfjj.get(i).getUid());
				fabiao.setFcode(xfjj.get(i).getFcode());
				fabiao.setFtype(xfjj.get(i).getFtype());
				fabiao.setFpart(xfjj.get(i).getFpart());
				fabiao.setFroe(xfjj.get(i).getFroe());
				fabiao.setFincrease(xfjj.get(i).getFincrease());
				fabiao.setFcontent(xfjj.get(i).getFcontent());
				fabiao.setFsituation(xfjj.get(i).getFsituation());
				fabiao.setFopinion(xfjj.get(i).getFopinion());
				fabiao.setFmoney(xfjj.get(i).getFmoney());
				fabiao.setFendmoney(xfjj.get(i).getFendmoney());
				fabiao.setFendtime(xfjj.get(i).getFendtime());
				fabiao.setFminmoney(xfjj.get(i).getFminmoney());
				fabiao.setFmaxmoney(xfjj.get(i).getFmaxmoney());
				fabiao.setFrate(xfjj.get(i).getFrate());
				fabiao.setFimage(xfjj.get(i).getFimage());
				fabiao.setForderimg(xfjj.get(i).getForderimg());
				fabiao.setFcontract(xfjj.get(i).getFcontract());
				fabiao.setFbidstatus(xfjj.get(i).getFbidstatus());
				fabiao.setFstatus(xfjj.get(i).getFstatus());
				fabiao.setFsecurity(xfjj.get(i).getFsecurity());
				fabiao.setFprocedures(xfjj.get(i).getFprocedures());
				fabiao.setFrepayment(xfjj.get(i).getFrepayment());
				
				//取完成率
				 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
				 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
				 fabiao.setCompnrate(compnrate);
				 
				//取结束时间
				String endtime = xfjj.get(i).getFendtime();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date date2 = format.parse(endtime);
				//取两个时间的天数 
				int aa = DateUtils.differentDays(date3, date2);
				fabiao.setRematime(aa);
				
				//取投资万元收益
				String type = fabiao.getFrepayment();
				double syl = (fabiao.getFroe().add(fabiao.getFincrease())).doubleValue();
				if(type!=null && !type.equals("")) {
					fabiao.setYield(YieldUtil.getYield(fabiao.getFhuanstat(), fabiao.getFhuanend(), syl,10000,type));
				}
				
				
				xfjjs.add(fabiao);
			}		
			//消费金融
			model.addAttribute("xfjjs", xfjjs);
			//把分页工具类添加进request
			model.addAttribute("page",page);
			return "views/front/investjj";
	}
	
	
	//爱公益
	@RequestMapping("toinvestgy")
	public String toAGY(Model model,Integer pageNow) throws Exception{
		model.addAttribute("pageName", "invset");
		BidUtilController.setFabiao(fabiaoService);
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		//根据标类型获取总数
		int totalCount =  (int) fabiaoService.getProductsCount("爱公益");
		//分页实现
		Page page ;  
		List<Fabiao> agy = new ArrayList<Fabiao>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        //现在模拟为两页
	        page.setPageSize(2);
	        agy = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"爱公益");  
	     } else {  
	        page = new Page(totalCount, 1);  
	        agy = this.fabiaoService.selectProductsByPage(page.getStartPos(), page.getPageSize(),"爱公益");  
	     } 
		
		List<Fabiao> agys = new ArrayList<Fabiao>(); 
		for(int i=0;i<agy.size();i++) {
			Fabiao fabiao = agy.get(i);
			fabiao.setFid(agy.get(i).getFid());
			fabiao.setFtitle(agy.get(i).getFtitle());
			fabiao.setUid(agy.get(i).getUid());
			fabiao.setFcode(agy.get(i).getFcode());
			fabiao.setFtype(agy.get(i).getFtype());
			fabiao.setFpart(agy.get(i).getFpart());
			fabiao.setFroe(agy.get(i).getFroe());
			fabiao.setFincrease(agy.get(i).getFincrease());
			fabiao.setFcontent(agy.get(i).getFcontent());
			fabiao.setFsituation(agy.get(i).getFsituation());
			fabiao.setFopinion(agy.get(i).getFopinion());
			fabiao.setFmoney(agy.get(i).getFmoney());
			fabiao.setFendmoney(agy.get(i).getFendmoney());
			fabiao.setFendtime(agy.get(i).getFendtime());
			fabiao.setFminmoney(agy.get(i).getFminmoney());
			fabiao.setFmaxmoney(agy.get(i).getFmaxmoney());
			fabiao.setFrate(agy.get(i).getFrate());
			fabiao.setFimage(agy.get(i).getFimage());
			fabiao.setForderimg(agy.get(i).getForderimg());
			fabiao.setFcontract(agy.get(i).getFcontract());
			fabiao.setFbidstatus(agy.get(i).getFbidstatus());
			fabiao.setFstatus(agy.get(i).getFstatus());
			fabiao.setFsecurity(agy.get(i).getFsecurity());
			fabiao.setFprocedures(agy.get(i).getFprocedures());
			fabiao.setFrepayment(agy.get(i).getFrepayment());
			
			//取完成率
			 BigDecimal bigcompnrate = fabiao.getFendmoney().divide(fabiao.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
			 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
			 fabiao.setCompnrate(compnrate);
			 
			//取结束时间
			String endtime = agy.get(i).getFendtime();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date2 = format.parse(endtime);
			//取两个时间的天数 
			int aa = DateUtils.differentDays(date3, date2);
			fabiao.setRematime(aa);
			
			//取投资万元收益
			String type = fabiao.getFrepayment();
			double syl = (fabiao.getFroe().add(fabiao.getFincrease())).doubleValue();
			if(type!=null && !type.equals("")) {
				fabiao.setYield(YieldUtil.getYield(fabiao.getFhuanstat(), fabiao.getFhuanend(), syl,10000,type));
			}
			
			agys.add(fabiao);
		}
		//爱公益
		model.addAttribute("agys", agys);
		//把分页工具类添加进request
		model.addAttribute("page",page);
		return "views/front/investgy";
	}
	
	/**
	 * 安全保障页面的conteroller
	 * */
	@RequestMapping(value="/toguarantee")
	public ModelAndView tofronguarantee(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "security");
		
		mo.setViewName("views/front/guarantee");
		return mo;
	}
	
	/**
	 * 关于我们页面的conteroller
	 * */
	@RequestMapping(value="/toabout")
	public String tofronabout(Model model) {
	
		List<About> abs = aboutService.getAllModel();
		List<String> result = new ArrayList<>();
		About a = new About();
		if(abs.size()!=0) {
			a = abs.get(0);
			result = Arrays.asList(StringUtils.split(a.getAbimage(),","));
		}		
		model.addAttribute("aboutimg",result);
		model.addAttribute("about", a);
		return "views/front/about";
	}
	
	/**
	 * 我的账户页面的conteroller
	 * @throws ParseException 
	 * @throws JsonProcessingException 
	 * */
	@RequestMapping(value="/tousercenter")
	public ModelAndView tofronusercenter(@RequestParam Integer uid,Model model,HttpSession session) throws ParseException, JsonProcessingException {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "myinfo");
		
		//获取用户基本信息
		Userinfo userinfos = new Userinfo();
		userinfos.setUid(uid);
		Userinfo userinfo = userInfoService.getModel(userinfos);
		session.setAttribute("userinfo", userinfo);
		
		/**
		 * 根据对象查询时会有关联实名认证表,若没有实名认证则userinfo为空
		 * 此时需要根据用户表id查询
		 * */
		if(userinfo==null) {
			Userinfo userinf = userInfoService.seleUserinfoByuid(uid);
			session.setAttribute("userinfo", userinf);
		}
		//初始化等级
		Sing sing = new Sing();
		sing.setSiguser(uid);
		sing = singService.getModel(sing);
		if(sing==null) {
			sing = new Sing();
			sing.setSiguser(uid);
			sing.setSiglevel(1);
			sing.setLasttime(DateUtils.getLastYear());
			sing.setName("帮主");
			sing.setSiggrowth(2+"");
			sing.setCountday(0);
			//取还需成长值
			sing.setIntegral(4000-sing.getCountday());
			singService.addModel(sing);
		}else {
			Integer rr = Integer.parseInt(sing.getSiggrowth());
			/**
			 * 判断等级
			 * */
			if(rr>=4000) {
				//铁帮主
				sing.setName("铁帮主");
				//取还需成长值
				sing.setIntegral(20000-rr);
			}else if(rr>=20000) {
				//铜帮主
				sing.setName("铜帮主");
				//取还需成长值
				sing.setIntegral(60000-rr);
			}else if(rr>=60000) {
				//金帮主
				sing.setName("金帮主");
				//取还需成长值
				sing.setIntegral(240000-rr);
			}else if(rr>=240000) {
				//白金帮主
				sing.setName("白金帮主");
				//取还需成长值
				sing.setIntegral(99999999-rr);
			}else {
				sing.setName("帮主");
				//取还需成长值
				sing.setIntegral(4000-rr);
			}
		}
		
		//得到总收益
		Double allMoney = 0.0;
		Profit profit = new Profit();
		profit.setUid(uid);
		List<Profit> profitlist = profitService.seleByProfit(profit);
		for (int i = 0; i < profitlist.size(); i++) {
			allMoney+=profitlist.get(i).getPfmoney();
		}
		
		//得到当天的收益
		Double dayMoney = 0.0;
		Profit pf = new Profit();
		pf.setUid(uid);
		SimpleDateFormat dataTime = new SimpleDateFormat("yyyy-MM-dd");
		pf.setPftime(dataTime.format(new Date()));
		List<Profit> pflist = profitService.seleByProfit(pf);
		for (int i = 0; i < pflist.size(); i++) {
			dayMoney+=pflist.get(i).getPfmoney();
		}
		
		//收益报表
		String maxProfitTime = dataTime.format(new Date()) ; //得到最近的一天收益的时间
		String minProfitTime = profitService.seleProfitBytimemin(); //得到最远的一天收益的时间
		if(minProfitTime == null || minProfitTime.equals("")) {
			minProfitTime = dataTime.format(new Date());
		}
		
		Date maxTime =DateUtils.ChuDate(maxProfitTime) ;
		Date minTime =DateUtils.ChuDate(minProfitTime) ;
		
		SimpleDateFormat dateym = new SimpleDateFormat("yyyy-MM");
		//获取两个时间段的每一天 yyyy-MM-dd
		List<Date> dateList = DateUtils.getEveryDay(minTime, maxTime);
		//获取两个时间段的每一个月 yyyy-MM
		List<Date> mouthDate = DateUtils.getEveryMouth(minTime, maxTime);
		
		
		List<Object> dayProfit = new ArrayList<>();
		List<Object> moneyProfit = new ArrayList<>();
		
		List<Object> dayTimeList = new ArrayList<>();
		List<Object> mouthTimeList = new ArrayList<>();
		Double moneyDay = 0.0;
		Double moneyMouth = 0.0;
		for (int i = 0; i < dateList.size(); i++) {
			dayTimeList.add(dataTime.format(dateList.get(i)));
			Profit pro = new Profit();
			pro.setUid(uid);
			pro.setPftime(dataTime.format(dateList.get(i)));
			List<Profit> prolist = profitService.seleByProfit(pro);
			if(prolist.size()>0) {
				for (int j = 0; j < prolist.size(); j++) {
					moneyDay+=prolist.get(j).getPfmoney();
				}
				dayProfit.add(moneyDay);
			}
			else {
				dayProfit.add(0.0);
			}
		}	
			for (int m = 0; m < mouthDate.size(); m++) {
				mouthTimeList.add(dateym.format(mouthDate.get(m)));
				Profit prof = new Profit();
				prof.setUid(uid);
				prof.setPftime(dateym.format(mouthDate.get(m)));
				List<Profit> proflist = profitService.seleByProfit(prof);
				if(proflist.size()>0) {
					for (int n = 0; n < proflist.size(); n++) {
						moneyMouth+=proflist.get(n).getPfmoney();
					}
					moneyProfit.add(moneyMouth);
				}
				else {
					moneyProfit.add(0.0);
				}
			
		}
		ObjectMapper om = new ObjectMapper();
		//转换成json对象
		String dayList = om.writeValueAsString(dayTimeList);
		String mouthList = om.writeValueAsString(mouthTimeList);
		String dayProfits = om.writeValueAsString(dayProfit);
		String mouthProfits = om.writeValueAsString(moneyProfit);
		
		//获取发标信息
		Fabiao fabiao = new Fabiao();
		fabiao.setUid(uid);
		Fabiao fa = fabiaoService.getModel(fabiao);
		session.setAttribute("fabiao", fa);
		
		if(fa!=null) {
			Repayment repay = new Repayment();
			repay.setFid(fa.getFid());
			Repayment repay1 = repaymentService.getModel(repay);
			if(repay1!=null) {
				session.setAttribute("repayment", repay1);
			}
		}
		
		//得到代收收益
		List<Bid> bidlist = bidServices.seleBidByUid(uid);
		BigDecimal bidProfit = new BigDecimal("0.0");
		BigDecimal bidProfitMy = new BigDecimal("0.0");
		if(bidlist.size()>0) {
			for (int i = 0; i < bidlist.size(); i++) {
				Fabiao fo = new Fabiao();
				fo.setFid(bidlist.get(i).getBfid());
				Fabiao f = fabiaoService.getModel(fo);
				bidProfit = bidProfit.add(bidlist.get(i).getBmoney().multiply(f.getFroe().add(f.getFincrease())));
				bidProfitMy = bidProfitMy.add(bidlist.get(i).getBmoney());
			}
		}
		else {
			bidProfit = new BigDecimal("0.0");
			bidProfitMy = new BigDecimal("0.0");
		}
		User u = new User();
		u.setUid(uid);
		User user = iUserService.getModel(u);
		BigDecimal myUbalence = new BigDecimal("0.0");
		BigDecimal bl = new BigDecimal(user.getUbalance());
		//用户的余额
		myUbalence = myUbalence.add(bl);
		
		//用户的总资产
		BigDecimal allMoneyUser = new BigDecimal("0.0");
		allMoneyUser =myUbalence.add(bidProfitMy.add(bidProfit)); 
		mo.addObject("bidProfitMy",bidProfitMy);
		mo.addObject("bidProfit",bidProfit);
		mo.addObject("allMoneyUser",allMoneyUser);
		mo.addObject("myUbalence",myUbalence);
		
		mo.addObject("dayList",dayList);
		mo.addObject("mouthList",mouthList);
		mo.addObject("dayProfits",dayProfits);
		mo.addObject("mouthProfits",mouthProfits);
		mo.addObject("allMoney",allMoney);
		mo.addObject("dayMoney",dayMoney);
		mo.addObject("singuser", sing);
			
		mo.setViewName("views/front/user/usercenter");	
		//mo.setViewName("views/front/user/baobiao");
		return mo;
	}
	
	/**
	 * 活动专区页面的conteroller
	 * */
	@RequestMapping(value="/toactivity")
	public ModelAndView tofronactivity(Model model) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "activity");
		
		mo.setViewName("views/front/activity");
		return mo;
	}
	
	/**
	 * 成长值中心页面的conteroller
	 * */
	@RequestMapping(value="/togrowth")
	public String tofrongrowth(HttpSession session,Model model) {
		User user =(User)session.getAttribute("user");
		Sing sing = new Sing();
		sing.setSiguser(user.getUid());
		sing = singService.getModel(sing);
		model.addAttribute("singuser", sing);
		return "views/front/user/growthcenter";
	}
	
	/**
	 * 投资记录页面的conteroller
	 * */
	@RequestMapping(value="/toinvestrecord")
	public String tofroninvestrecord(HttpSession session,Model model){
		 User user = (User)session.getAttribute("user");
		 if(user.getUid()==null) {
				return null;
			}
		 Integer id = Integer.parseInt(String.valueOf(user.getUid()));
		 List<Bid> list = new ArrayList<Bid>();
		 list = bidService.selectBid(id);
		 List<Bid> mylist = new ArrayList<Bid>();
		 for(int i=0;i<list.size();i++) {
			 Bid bid = new Bid();
			 bid.setBendtime(list.get(i).getBendtime());
			 bid.setBmoney(list.get(i).getBmoney());
			 bid.setBtime(list.get(i).getBtime());
			 bid.setBfid(list.get(i).getBfid());
			 Fabiao fff = new Fabiao();
			 fff.setFid(list.get(i).getBfid());
			 Fabiao fab = fabiaoService.getModel(fff);
			 bid.setFtit(fab.getFtitle());
			 bid.setBroe(fab.getFroe().add(fab.getFincrease()));
			 mylist.add(bid);
		 }
		model.addAttribute("list",mylist);
		return "views/front/user/investrecord";
	}
	
	/**
	 * 回款计划页面的conteroller
	 * */
	@RequestMapping(value="/topayment")
	public String tofronpayment(Model model,HttpSession session,Integer mrstatus) {
		ObjectMapper mapper = new ObjectMapper(); //转换器  
		Map<String, Object> map = new HashMap<String, Object>();
		List<Repayment> RepaymentList = new ArrayList<Repayment>();
		User user = (User)session.getAttribute("user");
		List<Repayment> listRepayment = repaymentService.selectMoney(user.getUid());
		BigDecimal allMoney = new BigDecimal("0.00");
		for (int i = 0; i < listRepayment.size(); i++) {
			Repayment repayment = new Repayment();  
			repayment.setUiname(listRepayment.get(i).getUiname());
			repayment.setRmface(listRepayment.get(i).getRmface());
			repayment.setRmwait(listRepayment.get(i).getRmwait());
			repayment.setRmall(listRepayment.get(i).getRmall());
			repayment.setRmstate(listRepayment.get(i).getRmstate());
			repayment.setRmstyle(listRepayment.get(i).getRmstyle());
			repayment.setFcode(listRepayment.get(i).getFcode());
			repayment.setRmoverdue(listRepayment.get(i).getRmoverdue());
			allMoney = listRepayment.get(i).getRmwait().add(listRepayment.get(i).getRmface().add(listRepayment.get(i).getRmall()));
			repayment.setRmplan(allMoney);
			RepaymentList.add(repayment);
		}
		model.addAttribute("listRepayment",RepaymentList);
		return "views/front/user/payment";
	}
	
	/**
	 * 债权页面的conteroller
	 * */
	@RequestMapping(value="/totransfer")
	public String tofrontransfer() {
		return "views/front/user/transfer";
	}
	
	/**
	 *邀请好友页面的conteroller
	 * @throws UnknownHostException 
	 * */
	@RequestMapping(value="/toinviting")
	public String toinviting(HttpSession session,String uinvite) throws UnknownHostException {
		AddressUtils addressUtils = new AddressUtils();
		String ip =addressUtils.getIP();
		session.setAttribute("addressIp", ip);
		List<User> listUser = iUserService.seleUserByUinvite(uinvite);
		session.setAttribute("listUser",listUser);
		return "views/front/inviting";
	}
	
	/**
	 *奖励金页面的conteroller
	 *
	 * */
	@RequestMapping(value="/tomoneyreward")
	public String torewardrecord(HttpSession session,Integer uid){
		List<Moneyrecord> MoneyList = new ArrayList<Moneyrecord>();
		List<Moneyrecord> listMoney = moneyrecordServiece.selectMoneyrecord(uid);
		Double allMoneyCode = 0.0;
		for (int i = 0; i < listMoney.size(); i++) {
			allMoneyCode+=listMoney.get(i).getMrwastemoney();
			Moneyrecord moneyrecord = new Moneyrecord();  
			String moneytime=DateUtils.ChuSHDateFormat(listMoney.get(i).getMrwasttime());
			moneyrecord.setMrwasttime(moneytime);
			moneyrecord.setMrdetail(listMoney.get(i).getMrdetail());
			moneyrecord.setMrid(listMoney.get(i).getMrid());
			moneyrecord.setUiname(listMoney.get(i).getUiname());
			moneyrecord.setMrwastemoney(listMoney.get(i).getMrwastemoney());
			MoneyList.add(moneyrecord);
		}
		session.setAttribute("listMoney",MoneyList);
		session.setAttribute("allMoneyCode",allMoneyCode);
		return "views/front/management/moneyrecord";
	}
	//前台资金记录模糊查询
	@RequestMapping(value="/toSeleByMoneyRecord")
	@ResponseBody
	public String torewardrecord(Moneyrecord mr,Integer mrstatus,HttpSession session) throws JsonProcessingException{
		SimpleDateFormat dataTime = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat mouthTime = new SimpleDateFormat("yyyy-MM");
		ObjectMapper mapper = new ObjectMapper(); //转换器  
		Map<String, Object> map = new HashMap<String, Object>();
		List<Moneyrecord> MoneyList = new ArrayList<Moneyrecord>();
		User user = (User)session.getAttribute("user");
		Double allMoneyDetail = 0.0;
		if(mrstatus==0) {
			MoneyList = moneyrecordServiece.selectMoneyrecord(user.getUid());
			for (int i = 0; i < MoneyList.size(); i++) {
				allMoneyDetail+=MoneyList.get(i).getMrwastemoney();
			}
		}
		else if(mrstatus==7) {
			Moneyrecord moneyrecord = new Moneyrecord();  
			moneyrecord.setMrwasttime((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),7))));
			moneyrecord.setMrendtime(DateUtils.getDateFormat(new Date()));
			moneyrecord.setUid(user.getUid());
			MoneyList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
			for (int i = 0; i < MoneyList.size(); i++) {
				allMoneyDetail+=MoneyList.get(i).getMrwastemoney();
			}
		}else if(mrstatus==30) {
			Moneyrecord moneyrecord = new Moneyrecord();  
			moneyrecord.setMrwasttime(mouthTime.format((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),30)))));
			moneyrecord.setMrendtime(mouthTime.format(DateUtils.getDateFormat(new Date())));
			moneyrecord.setUid(user.getUid());
			MoneyList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
			for (int i = 0; i < MoneyList.size(); i++) {
				allMoneyDetail+=MoneyList.get(i).getMrwastemoney();
			}
		}else if(mrstatus==90) {
			Moneyrecord moneyrecord = new Moneyrecord();  
			moneyrecord.setMrwasttime(mouthTime.format((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),90)))));
			moneyrecord.setMrendtime(mouthTime.format(DateUtils.getDateFormat(new Date())));
			moneyrecord.setUid(user.getUid());
			MoneyList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
			for (int i = 0; i < MoneyList.size(); i++) {
				allMoneyDetail+=MoneyList.get(i).getMrwastemoney();
			}
		}
		else if(mr.getMrwasttime()!=null && mr.getMrwasttime()!="" && mr.getMrendtime()!=null && mr.getMrendtime()!="") {
			Moneyrecord moneyrecord = new Moneyrecord();  
			moneyrecord.setMrwasttime(dataTime.format(mr.getMrwasttime()));
			moneyrecord.setMrendtime(dataTime.format(mr.getMrendtime()));
			moneyrecord.setUid(user.getUid());
			MoneyList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
			for (int i = 0; i < MoneyList.size(); i++) {
				allMoneyDetail+=MoneyList.get(i).getMrwastemoney();
			}
		}
		map.put("data", MoneyList);
		String obj = mapper.writeValueAsString(map);
		return obj;
	}
	
	/**
	 *微商资金管理页面的conteroller
	 * */
	@RequestMapping(value="/toopen")
	public String toopen() {
		return "views/front/openbankid";
	}
	
	/**
	 *奖励金流水页面的conteroller
	 * */
	@RequestMapping(value="/toreward")
	public String toreward(Model model,HttpSession session,Integer mrstatus) {
		ObjectMapper mapper = new ObjectMapper(); //转换器  
		Map<String, Object> map = new HashMap<String, Object>();
		List<MoneyDetail> MoneyList = new ArrayList<MoneyDetail>();
		User user = (User)session.getAttribute("user");
		List<MoneyDetail> listMoney = moneyDetailService.selectMoney(user.getUid());
		Double allMoneyDetail = 0.0;
		for (int i = 0; i < listMoney.size(); i++) {
			MoneyDetail moneyDetail = new MoneyDetail();  
			String mdtime=DateUtils.ChuSHDateFormat(listMoney.get(i).getMdtime());
			moneyDetail.setMdtime(mdtime);
			moneyDetail.setMdid(listMoney.get(i).getMdid());;
			moneyDetail.setUid(listMoney.get(i).getUid());
			moneyDetail.setUiname(listMoney.get(i).getUiname());
			moneyDetail.setMdintroduce(listMoney.get(i).getMdintroduce());
			moneyDetail.setMdmoney(listMoney.get(i).getMdmoney());
			moneyDetail.setMdstype(listMoney.get(i).getMdstype());
			MoneyList.add(moneyDetail);
		}
		model.addAttribute("listMoney",MoneyList);
		model.addAttribute("allMoneyDetail",allMoneyDetail);
		
		return "views/front/management/rewardrecord";
	}
	//前台奖励金模糊查询
		@RequestMapping(value="toselemoneyDetail")
		@ResponseBody
		public String toSeleByMoneyDetail(MoneyDetail md,Integer mrstatus,HttpSession session) throws JsonProcessingException {
			SimpleDateFormat dataTime = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat mouthTime = new SimpleDateFormat("yyyy-MM");
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			List<MoneyDetail> MoneyList = new ArrayList<MoneyDetail>();
			User user = (User)session.getAttribute("user");
			Double allMoneyDetail = 0.0;
			if(mrstatus==0) {
				MoneyList = moneyDetailService.selectMoney(user.getUid());
				for (int i = 0; i < MoneyList.size(); i++) {
					allMoneyDetail+=MoneyList.get(i).getMdmoney();
				}
			}
			else if(mrstatus==7) {
				MoneyDetail moneyDetail = new MoneyDetail();  
				moneyDetail.setMdtime((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),7))));
				moneyDetail.setMrendtime(DateUtils.getDateFormat(new Date()));
				moneyDetail.setUid(user.getUid());
				MoneyList = moneyDetailService.seleMonreyReByTime(moneyDetail);
				for (int i = 0; i < MoneyList.size(); i++) {
					allMoneyDetail+=MoneyList.get(i).getMdmoney();
				}
			}else if(mrstatus==30) {
				MoneyDetail moneyDetail = new MoneyDetail();  
				moneyDetail.setMdtime(mouthTime.format((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),30)))));
				moneyDetail.setMrendtime(mouthTime.format(DateUtils.getDateFormat(new Date())));
				moneyDetail.setUid(user.getUid());
				MoneyList = moneyDetailService.seleMonreyReByTime(moneyDetail);
				for (int i = 0; i < MoneyList.size(); i++) {
					allMoneyDetail+=MoneyList.get(i).getMdmoney();
				}
			}else if(mrstatus==90) {
				MoneyDetail moneyDetail = new MoneyDetail();  
				moneyDetail.setMdtime(mouthTime.format((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),90)))));
				moneyDetail.setMrendtime(mouthTime.format(DateUtils.getDateFormat(new Date())));
				moneyDetail.setUid(user.getUid());
				MoneyList = moneyDetailService.seleMonreyReByTime(moneyDetail);
				for (int i = 0; i < MoneyList.size(); i++) {
					allMoneyDetail+=MoneyList.get(i).getMdmoney();
				}
			}
			else if(md.getMdtime()!=null &&md.getMdtime()!="" && md.getMrendtime()!=null && md.getMrendtime()!="") {
				MoneyDetail moneyDetail = new MoneyDetail(); 
				moneyDetail.setMdtime(dataTime.format(md.getMdtime()));
				moneyDetail.setMrendtime(dataTime.format(md.getMdtime()));
				moneyDetail.setUid(user.getUid());
				MoneyList = moneyDetailService.seleMonreyReByTime(moneyDetail);
				for (int i = 0; i < MoneyList.size(); i++) {
					allMoneyDetail+=MoneyList.get(i).getMdmoney();
				}
			}
			map.put("data", MoneyList);
			String obj = mapper.writeValueAsString(map);
			return obj;
		}	
	
	/**
	 *我的钱帮币页面的conteroller
	 * */
	@RequestMapping(value="/tomycoin")
	public String tomycoin() {
		return "views/front/management/mycoin";
	}
	
	/**
	 *站内消息页面的conteroller
	 * */
	@RequestMapping(value="/tomsg")
	public String tomsg() {
		return "views/front/message/sitemsg";
	}
	
	/**
	 *通知设置页面的conteroller
	 * */
	@RequestMapping(value="/tosetmsg")
	public String tosetmsg(HttpSession session,Model model) {
		/**
		 * 从session获取user对象
		 * 如果取得的是空则会跳会首界面
		 * */
		User user = (User)session.getAttribute("user");
		if(user==null) {
			return "redirect:/toindex";
		}
		
		
		List<Setupnatice> setupnatice2 = setupnaticeService.getUserSetup(user.getUid());
		model.addAttribute("setupnatice",setupnatice2);
		return "views/front/message/setmsg";
	}
	
	/**
	 *业务特色页面的conteroller
	 * */
	@RequestMapping(value="/totures")
	public String totures() {
		return "views/front/aboutwe/features";
	}
	
	/**
	 *大事记页面的conteroller
	 * */
	@RequestMapping(value="/tobilia")
	public String tobilia() {
		return "views/front/aboutwe/memorabilia";
	}
	
	/**
	 *媒体报道页面的conteroller
	 * */
	@RequestMapping(value="/tocover")
	public String tocover(Model model,Integer pageNow) {
		List<Video> listvideo = videoservices.getAllModel();
		model.addAttribute("videosp", listvideo);
		
		//根据标类型获取总数
		int totalCount =  (int) newsfocusService.getProductsCount();
		//分页实现
		Page page ;  
		List<Newsfocus> listnews = new ArrayList<Newsfocus>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        //现在模拟为两页
	        listnews = this.newsfocusService.selectProductsByPage(page.getStartPos(), page.getPageSize());  
	     } else {  
	        page = new Page(totalCount, 1);  
	        listnews = this.newsfocusService.selectProductsByPage(page.getStartPos(), page.getPageSize());  
	     } 
		 model.addAttribute("newsbl",listnews);
			//把分页工具类添加进request
		model.addAttribute("page",page);
		return "views/front/aboutwe/coverage";
	}
	
	//详情页
	@RequestMapping(value ="selectNF")
	public String selectnewsfocus(Integer id,Model model) {
		List<Newsfocus> listnf = newsfocusService.selectNewsfocus(id);
		model.addAttribute("listnf", listnf);
		return "views/front/newsfocus";
	}
	
	/**
	 *网站公告页面的conteroller
	 * */
	@RequestMapping(value="/tonot")
	public String tonot(Model model) {
		//网站公告
		List<Notice> listwz = noticeFontSrvice.selectByType("网站公告");
		//项目公告
		List<Notice> listxm = noticeFontSrvice.selectByType("项目公告");
		//还款公告
		List<Notice> listhk = noticeFontSrvice.selectByType("还款公告");
		//全部公告
		List<Notice> listall = noticeFontSrvice.selectByType(null);
		model.addAttribute("listwz", listwz);
		model.addAttribute("listxm", listxm);
		model.addAttribute("listhk", listhk);
		model.addAttribute("listall", listall);
		
		return "views/front/aboutwe/notice";
	}
	
	/**
	 *管理团队页面的conteroller
	 * */
	@RequestMapping(value="/toteam")
	public String toteam() {
		return "views/front/aboutwe/team";
	}
	
	/**
	 *联系我们页面的conteroller
	 * */
	@RequestMapping(value="/tocon")
	public String tocon(Model model) {
		Contact contact = new Contact();
		//查是否是一的结果
		contact.setCxs(1);
		contact = contactService.getModel(contact);
		if(contact!=null) {
			if(contact.getCwechartimgurl()==null) {
				return null;
			}
			if(contact.getCweboimgurl()==null) {
				return null;
			}
			model.addAttribute("contact",contact);
			return "views/front/aboutwe/contact";
		}else {
			return "views/front/aboutwe/contact";
		}
		
	}
	
	@RequestMapping(value="/ajaxgetwechart")
	@ResponseBody
	public String ajaxgetwechart() throws Exception{
		ObjectMapper ob = new ObjectMapper();
		Contact contact = new Contact();
		//查是否是一的结果
		contact.setCxs(1);
		contact = contactService.getModel(contact);
		if(contact!=null) {
			if(contact.getCwechartimgurl()==null) {
				return null;
			}
			if(contact.getCweboimgurl()==null) {
				return null;
			}
		}
		String result = ob.writeValueAsString(contact);
		return result;
	}
	
	
	/**
	 *企业理财页面的conteroller 
	 * */
	@RequestMapping(value="/tofinan")
	public String tofinan() {
		return "views/front/financing";
	}
	
	/**
	 *帮助中心页面的conteroller 
	 * */
	@RequestMapping(value="/tohelp")
	public String tohelp() {
		return "views/front/help";
	}
	
	/**
	 *忘记密码页面的conteroller 
	 * */
	@RequestMapping(value="/toforget")
	public String toforget() {
		return "views/front/forget";
	}
	
	/**
	 * 账户设置页面的controller
	 * */
	@RequestMapping(value="/userverify")
	public ModelAndView toUserVerify(@RequestParam Integer uiid,Model model,HttpSession session) {
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName", "myinfo");
		
		//获取用户基本信息
		Userinfo userinfos = new Userinfo();
		userinfos.setUiid(uiid);
		Userinfo userinfo = userInfoService.getModel(userinfos);
		session.setAttribute("userinfo", userinfo);
		
		/**
		 * 根据对象查询时会有关联实名认证表,若没有实名认证则userinfo为空
		 * 此时需要根据用户表id查询
		 * */
		if(userinfo==null) {
			Userinfo userinf = userInfoService.getUserinfoByuiid(uiid);
			session.setAttribute("userinfo", userinf);
		}
		
		//省
		List<Provice> pvList = addressService.getProvinceList();
		mo.addObject("pvlist",pvList);
		mo.addObject("pvlistsize",pvList.size());
		//市
		List<City> cyList = addressService.getCityList();
		mo.addObject("cylist",cyList);
		mo.addObject("cylistsize",cyList.size());
		//县
		List<Area> aeList = addressService.getAreaList();
		mo.addObject("aelist",aeList);
		mo.addObject("aelistsize",aeList.size());
		
		mo.setViewName("views/front/user/userverify");
		return mo;
	}
	
	/**
	 *忘记密码页面的conteroller 
	 * */
	@RequestMapping(value="/tocode")
	public String tocode() {
		return "views/front/qrcode";
	}
	
	/**
	 * 产品详情页面的conteroller
	 * */
	@RequestMapping(value="/topro")
	public String topro() {
		return "views/front/product";
	}
	
	/**
	 * 体验金页面的conteroller
	 * */
	
	@RequestMapping(value="/togold")
	public String togold() {
		return "views/front/expgold";
	}
	
	/**
	 *充值页面的contorller
	 * */
	@RequestMapping(value="/torecharge")
	public String torecharge(Integer uiid,HttpServletRequest request) {
		Userbackcard userbackcard = new Userbackcard();
		Userbackcard uback = null;
		userbackcard.setUiid(uiid);
		try {
		 uback = userbackcardService.getModel(userbackcard);
		String kahao = uback.getUbbackcardnum();
		String xianshi=kahao.substring(0,4)+"********"+kahao.substring(kahao.length()-4);
		request.setAttribute("backnum",xianshi);
		}catch(Exception e){
			uback = null; 
		}
		request.setAttribute("uback", uback);
		return "views/front/user/recharge";
	}
	
	/**
	 *提现页面的contorller
	 * */
	@RequestMapping(value="/towithdraw")
	public String towithdraw(Integer uiid,HttpServletRequest  request) {
		Userbackcard userbackcard = new Userbackcard();
		userbackcard.setUiid(uiid);
		Userbackcard uback = null;
		try {
		 uback = userbackcardService.getModel(userbackcard);
		String kahao = uback.getUbbackcardnum();
		String xianshi=kahao.substring(0,4)+"********"+kahao.substring(kahao.length()-4);
		request.setAttribute("backnums", xianshi);
		}catch(Exception e) {
			uback = null; 
		}
		request.setAttribute("uback", uback);
		return "views/front/user/withdrawals";
	}
	
	
	
	
}
