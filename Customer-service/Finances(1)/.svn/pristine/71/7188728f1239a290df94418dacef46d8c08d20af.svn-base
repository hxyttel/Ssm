package com.p2p.controller.front;

import java.math.BigDecimal;
import java.text.DateFormat;
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

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Bid;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.ProjectSelect;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.User;
import com.p2p.pojo.Uservouch;
import com.p2p.service.back.BidService;
import com.p2p.service.back.RedmoneyService;
import com.p2p.service.back.UservouchService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.util.CodePassage;
import com.p2p.util.ContextUtils;
import com.p2p.util.DateUtils;
import com.p2p.util.Page;
import com.p2p.util.YieldUtil;
/**
 * 操作人:汪栋才
 * 操作时间:2017-1-12
 * 操作前台标详情的controller
 * */
@Controller
public class FiabiaoController {
	
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	
	@Resource(name="redmoneyServiceImpl")
	private RedmoneyService redmoneyService;
	
	@Resource(name="uservouchServiceImpl")
	private UservouchService uservouchService;
	
	@Resource(name="bidServiceImpl")
	private BidService bidService;
	
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	@RequestMapping("checkUserByBid")
	@ResponseBody
	public Integer checkUserByBid(HttpServletRequest req) {
		Bid bid = new Bid();
		bid.setBfid(Integer.parseInt(req.getParameter("fid")));
		bid.setUid(Integer.parseInt(req.getParameter("uid")));
		Bid bid2 = bidService.getModel(bid);
		if(bid2!=null) {
			return 1;
		}else {
			return 0;
		}
	}
	
	@RequestMapping("toproject")
	public String toProject(String pid,Model model,HttpSession session,ProjectSelect select,Integer pageNow) throws Exception{
		model.addAttribute("pageName", "invset");
		BidUtilController.setFabiao(fabiaoService);
		List<String> myimg = new ArrayList<String>();
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		
		Fabiao fabiao = new Fabiao();
		fabiao.setFid(Integer.parseInt(pid));
		
		Fabiao thisfb =  fabiaoService.getModel(fabiao);
		
		//拼接list
		myimg = Arrays.asList(thisfb.getForderimg().split(","));  
		
		//取完成率
		 BigDecimal bigcompnrate = thisfb.getFendmoney().divide(thisfb.getFmoney(),10,BigDecimal.ROUND_HALF_DOWN);
		 String compnrate =  ContextUtils.parsePercent(bigcompnrate.toString());
		 thisfb.setCompnrate(compnrate);
		//取结束时间
		String endtime = thisfb.getFendtime();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date2 = format.parse(endtime);
		//取两个时间的天数 
		int aa = DateUtils.differentDays(date3, date2);
		thisfb.setRematime(aa);
		
		//取投资万元收益
		String type = thisfb.getFrepayment();
		double syl = (thisfb.getFroe().add(thisfb.getFincrease())).doubleValue();
		if(type!=null && !type.equals("")) {
			thisfb.setYield(YieldUtil.getYield(thisfb.getFhuanstat(), thisfb.getFhuanend(), syl,10000,type));
		}
		
		//规定还款日期格式
		 Date dd =  format.parse(thisfb.getFhuanstat());
		 thisfb.setFhuanstat(format.format(dd));
		
		 
		 //查找当前用户的红包和贷息券
		 User user = (User)session.getAttribute("user");
		 List<Redmoney> redlist = new ArrayList<Redmoney>();
		 List<Uservouch> voulist = new ArrayList<Uservouch>();
		 if(user!=null) {
			 //查询红包
			 redlist = redmoneyService.selectByUserId(user.getUid());
			 redlist = CodePassage.makeRedMoneyList(redlist);
			 //查询代金券
			 voulist = uservouchService.selectByUserId(user.getUid());
			 voulist = CodePassage.makeUserVouchList(voulist);
		 }
		 //查询投标情况
		 int totalCount =  (int) bidService.getProductsCount(pid);
		 
		 Page page ;  
		 List<Bid> bids = new ArrayList<Bid>();
		 if (pageNow != null) {  
	        page = new Page(totalCount,pageNow);  
	        bids = this.bidService.selectProductsByPage(page.getStartPos(), page.getPageSize(),pid);  
	     } else {  
	        page = new Page(totalCount, 1);  
	        bids = this.bidService.selectProductsByPage(page.getStartPos(), page.getPageSize(),pid);  
	     }  
		List<Bid> mybids = new ArrayList<Bid>();
		for(int i=0;i<bids.size();i++) {
			Bid bid = new Bid();
			User u = new User();
			u.setUid(bids.get(i).getUid());
			u = iUserService.getModel(u);
			if(u==null) {
				continue;
			}
			bid.setUname(u.getUserinfo().getUiname());
			bid.setBtime(bids.get(i).getBtime());
			//加密手机号码
			String phoneNumber = u.getUphone().substring(0, 3) + "****" + u.getUphone().substring(7, u.getUphone().length());
			bid.setUphone(phoneNumber);
			bid.setBmoney(bids.get(i).getBmoney());
			mybids.add(bid);
		}
		
		model.addAttribute("page",page);
		model.addAttribute("mybids", mybids);
		model.addAttribute("thisfb", thisfb);
		model.addAttribute("redlist", redlist);
		model.addAttribute("voulist", voulist);
		model.addAttribute("myimg",myimg);
		return "views/front/product";
	}
	
	
	@RequestMapping("toProjectlikezt")
	@ResponseBody
	public String toProjectlike(ProjectSelect select,Model model) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		BidUtilController.setFabiao(fabiaoService);
		model.addAttribute("pageName", "invset");
		//取当前时间	
		Date date=new Date();
		DateFormat format1 =new SimpleDateFormat("yyyy-MM-dd");
		String time=format1.format(date);
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date3 = format2.parse(time);
		List<Fabiao> fabiaolist = fabiaoService.selectByLike(select);
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
		map.put("status", 1);
		map.put("fabiaolist", fabiaolists);
		ObjectMapper mapper = new ObjectMapper(); //转换器  
		String result = mapper.writeValueAsString(map);
		return result;
	}
	
	
}
