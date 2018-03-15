package com.p2p.controller.front;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cloopen.rest.sdk.utils.DateUtil;
import com.p2p.pojo.Cooorganiz;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Notice;
import com.p2p.pojo.Profit;
import com.p2p.pojo.User;
import com.p2p.pojo.Video;
import com.p2p.service.back.CooorganizService;
import com.p2p.service.back.IndexpicService;
import com.p2p.service.back.VideoService;
import com.p2p.service.front.FabiaoService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.NoticeFontSrvice;
import com.p2p.service.front.ProfitService;
import com.p2p.service.front.SetupnaticeService;
import com.p2p.util.CodePassage;
import com.p2p.util.DateUtils;
import com.p2p.util.SetupnaticeUtil;
/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是访问前台页面的
 * */
@Controller
public class BeansController {
	
	@Resource(name="indexpicServiceImpl")
	private IndexpicService indexpicService;
	
	@Resource(name="noticeFontServiceImpl")
	private NoticeFontSrvice noticeFontSrvice;
	
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;

	@Resource(name="setupnaticeServiceImpl")
	private SetupnaticeService setupnaticeService;
	
	@Resource(name="fabiaoServiceImpl")
	private FabiaoService fabiaoService;
	
	@Resource(name="videoServiceImpl")
	private VideoService videoservices;
	
	@Resource(name="noticeFontServiceImpl")
	private NoticeFontSrvice noticeFontService;
	
	@Resource(name="cooorganizServiceImpl")
	private CooorganizService cooorganizService;
	
	//收益表service
	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	
	/**
	 * 进入首界面(index.jsp)
	 * @throws ParseException 
	 * */
	@RequestMapping(value="/toindex")
	public String toFrontIndex(Model model,HttpServletRequest request,HttpSession session) throws ParseException{
		List<Indexpic> lists = indexpicService.getAllModel();
		model.addAttribute("indexpicList", lists);
		model.addAttribute("pageName","index");
		BidUtilController.setFabiao(fabiaoService);
		
		/**
		 * 在访问index界面时获取客户端是否有cookies
		 * */
		User user = new User();
		//获取站点的所有cookie
		Cookie[] cookies = request.getCookies();
		if(cookies!=null){
			for(int i=0;i<cookies.length;i++){
				Cookie c=cookies[i];
				//根据cookie的name匹配我们自己保存的cookie
				if(c.getName().equals("yxjruser")){//保存在cookie中的用户名
					user.setUphone(c.getValue());
				}
				if(c.getName().equals("yxjrpassword")){//保存在cookie中的密码
					user.setUpassword(c.getValue());
				}
			}
		}  
		if(user.getUpassword()!=null && user.getUphone()!=null) {
			
			if(!user.getUpassword().equals("") && !user.getUphone().equals("")) {
				
				User user2 =  iUserService.userLoing(user.getUphone(),user.getUpassword());
				if(user2!=null) {
					User user3 = iUserService.getModel(user2);
					session.setAttribute("user",user3);
				}
				
			}
		}
		
		/**
		 * 初始化用户通知消息设置
		 * */
		User us = (User)session.getAttribute("user");
		if(us!=null) {
			SetupnaticeUtil.initSetupnatice(us.getUid(), setupnaticeService);
		}
		
		//获取用户得到当天的收益
		Double dayMoney = 0.0;
		Profit pf = new Profit();
		pf.setUid(user.getUid());
		SimpleDateFormat dataTime = new SimpleDateFormat("yyyy-MM-dd");
		pf.setPftime(dataTime.format(new Date()));
		List<Profit> pflist = profitService.seleByProfit(pf);
		for (int i = 0; i < pflist.size(); i++) {
			dayMoney+=pflist.get(i).getPfmoney();
		}
		
		session.setAttribute("dayMoneyUser", dayMoney);
		
		//首页爱车贷遍历
		List<Fabiao> acds = CodePassage.makeList(fabiaoService,"爱车贷");
		model.addAttribute("fabiaolistsafd", acds);
		
		//首页爱房贷遍历
		List<Fabiao> fdas = CodePassage.makeList(fabiaoService,"爱房贷");
		model.addAttribute("fabiaofdas",fdas);
		
		//首页消费金融遍历
		List<Fabiao> xfjr = CodePassage.makeList(fabiaoService,"消费金融");
		model.addAttribute("fabiaoxfjr",xfjr);
		
		//项目直投遍历
		List<Fabiao> xmzt = CodePassage.makeList(fabiaoService,null);
		model.addAttribute("fabiaoxmzt",xmzt);
		
		//视频遍历
		List<Video> listvideo = videoservices.getAllModel();
		model.addAttribute("videosp", listvideo);
		
		List<Cooorganiz> listcooo = cooorganizService.getAllModel();
		model.addAttribute("cooorgsp", listcooo);
		
		//公告遍历
		List<Notice> listNotice = noticeFontService.getAllModel();
		model.addAttribute("listNotice", listNotice);
		
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
		
		return "views/front/index";
	}	
	/**
	 * 访问注册界面(register.jsp)
	 * */
	@RequestMapping(value="/toregirset")
	public String toRegirset(){
		return "views/front/register";
	}
	
	/**
	 * 访问登入界面(login.jsp)
	 * */
	@RequestMapping(value="/tologin")
	public String toLogin(){
		
		return "views/front/login";
	}
	
	/**
	 * 访问登入界面(login.jsp)
	 * */
	@RequestMapping(value="/toLoginHaveYQ")
	public ModelAndView toLoginHaveYQ(String code){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("views/front/register");
		mo.addObject("qycode",code);
		return mo;
	}
	
	
	
	/**
	 * 进入 会员商城界面(membermall.jsp)
	 * */
	@RequestMapping(value="/tomembermall")
	public ModelAndView toFrontMember(Model model){
		ModelAndView mo = new ModelAndView();
		
		model.addAttribute("pageName","business");
		mo.setViewName("views/front/membermall");
		return mo;
	}

}
