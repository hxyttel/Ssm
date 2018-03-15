package com.p2p.controller.front;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.controller.back.SendMailUtil;
import com.p2p.controller.back.UtilController;
import com.p2p.pojo.AuthebDetais;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Profit;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.Setupnatice;
import com.p2p.pojo.User;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Uservouch;
import com.p2p.service.back.AuthebDetaisService;
import com.p2p.service.back.FabiaobackService;
import com.p2p.service.back.RedmoneyService;
import com.p2p.service.back.SendMailService;
import com.p2p.service.back.UservouchService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.ProfitService;
import com.p2p.service.front.SetupnaticeService;
import com.p2p.service.front.UserInfoService;
import com.p2p.util.AddressUtils;
import com.p2p.util.DateUtils;
import com.p2p.util.IpChecker;
import com.p2p.util.PageInfo;
/**
 * 关于前台用户相关操作的controller
 * 2017-11-16
 * 操作人:汪栋才
 * */
@Controller
@RequestMapping("/user")
public class IUserController {
	//用户
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	//用户详情
	@Resource(name="userInfoServiceImpl")
	private UserInfoService userInfoService;
	
	
	@Resource(name="setupnaticeServiceImpl")
	private SetupnaticeService setupnaticeService;
	
	//发送email
	@Resource(name="sendMailServiceImpl")
	private SendMailService sendMailService;
	
	//认证详情
	@Resource(name="authebDetaisServiceImpl")
	private AuthebDetaisService authebDetaisService;
	
	//红包
	@Resource(name="redmoneyServiceImpl")
	private RedmoneyService redmoneyservice;
	
	//代金券
	@Resource(name="uservouchServiceImpl")
	private UservouchService uservouchService;
	
	//收益表service
	@Resource(name="profitServiceImpl")
	private ProfitService profitService;
	
	//发标表
	@Resource(name="fabiaobackServiceImpl")	
	private FabiaobackService fabiaoService;
	
	/**
	 * 用户通知设置的方法
	 * */
	@RequestMapping("/usersetup")
	@ResponseBody
	public Object usersetup(String thisval,String isck,HttpSession session) {
		Map<String,Object> map = new HashMap<String,Object>();
		User user = (User)session.getAttribute("user");
		Integer checked = Integer.parseInt(isck);
		if(user==null) {
			//修改失败
			map.put("status", 2);
			return map;
		}
		String[] array = thisval.split(",");  
		Setupnatice setupnatice = new Setupnatice();
		setupnatice.setUid(user.getUid());
		setupnatice.setUsname(array[0]);
		//判断选择的是哪一个
		if(array[1].equals("insinfo")) {
			setupnatice.setUsinsideStatus(checked);
		}else if(array[1].equals("eminfo")){
			setupnatice.setUsemailStatus(checked);
		}else if(array[1].equals("msginfo")){
			setupnatice.setUsmessageStatus(checked);
		}
		int aa =setupnaticeService.update(setupnatice);
		if(aa>0) {
			map.put("status", 1);
		}else {
			map.put("status", 2);
		}
		
		return map;
	}
	
	/**
	 * 用户注册界面的注册方法
	 * */
	@RequestMapping("/userRegister")
	@ResponseBody
	 public String userRegister(@RequestParam String phone,@RequestParam String pass_word,@RequestParam String yqcode,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws Exception {

		ObjectMapper mapper = new ObjectMapper(); //转换器  
		Map<String, Object> map = new HashMap<String, Object>();
		
		AddressUtils addressUtils = new AddressUtils();
		
		/**
		 * 1：密码加密（MD5）
		 * 2：写进数据库
		 * 3:根据返回id查找user对象
		 * 4：把user对象放在session中
		 * */
		//去空格
		String pas = pass_word.replace(" ", "");
		String ph = phone.replace(" ", "");
		String yq = yqcode.replace(" ", "");
		
		Object result = new SimpleHash("MD5", pas, ByteSource.Util.bytes("user"), 10);
		User user = new User();
		user.setUpassword(result.toString());
		user.setUphone(phone);
		user.setUloginTime(DateUtils.getDateTimeFormat(new Date()));
		
		//别人的邀请码
		if(!yqcode.equals("nowrite")) {
			System.out.println("有邀请码，给体验券");
			/**
			 * 根据邀请码去查询是哪个邀请的
			 * 1:被邀请用户增加一些权益(代金券,经验等..)
			 * 2:邀请码的用户同上
			 * */
			user.setOrderinvite(yq);
			
		}
		
		//自己的邀请码
		
		String ranks = IUserController.getUUID();
		user.setUinvite(ranks);
		
		
		/**
		 * 获取手机号生成URL
		 * 此controller方法在下面
		 * */
		String url = "http://"+addressUtils.getIP()+":8080/Finances/user/toLoginHaveYaoqing?phone="+phone;
		
		//设置自己的二维码
		String qrcode =   UtilController.createQRcode(url, request, response);
		user.setQrcode(qrcode);
		
		user.setUenable(1);
		user.setUisAccountSum(1);
		
		//设置ip
		String ip = IpChecker.getIp();
		user.setUip(ip);
		
		//设置自己的常用登入地
		String  address = addressUtils.getAddresses("ip="+ip, "utf-8");
		
		user.setUaddress(address);

		user.setUregTime(DateUtils.getDateTimeFormat(new Date()));
		user.setUcredit(3000);
		Double double1 = new Double("0.00");
		user.setUbalance(double1);
		
		user.setUlid("0");
		user.setVdid(0);
		
		try {
			Integer isadd = iUserService.addModel(user);
			System.out.println("是否插入 。。。。。"+isadd);
			
			/**
			 * 现在添加二级对象UserInfo对象(用户基本信息)
			 * */
			Userinfo userinfo = new Userinfo();
			userinfo.setUid(user.getUid());
			userinfo.setUiheadImg("/statics/front/statics/home2/images/user-head.png");
			userinfo.setUiname("yxjr"+user.getUphone());
			userinfo.setUisex("保密");
			userinfo.setUibirthday(DateUtils.getDateTimeFormat(new Date()));
			userinfo.setUiemailstatus(0);
			userinfo.setUiopenstatus(0);
			
			int isadduserinfo =   userInfoService.addModel(userinfo);
			System.out.println("插入是否成功 。。。。。"+isadduserinfo);
			
			
			//如果注册成功
			
			//用户注册成工，给与新人奖励红包
			Redmoney redmoney = new Redmoney();
			redmoney.setRmoney(50.0);
			redmoney.setRimage("/uploadFile/redmoney/timg.jpg");
			redmoney.setRstardtime(DateUtils.getDateTimeFormat(new Date()));
			redmoney.setRstart(0);
			//获取当前时间的后几天
			Date date = new Date();  
			SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			date = DateUtils.getDayAfter(date, 7);
			redmoney.setRendtime(formatDate.format(date));
			redmoney.setUid(user.getUid());
			redmoneyservice.addModel(redmoney);
			
			//数据库
			User user3 =  iUserService.getModel(user);
			System.out.println(user3.toString());
			/**
			 * 把用户信息存放进session
			 * */
			session.setAttribute("user",user3);
			map.put("status",1);
			String orderinvite = user.getOrderinvite();
			if(orderinvite != null ) {
				User users = iUserService.sletUserOinvite(orderinvite);
				Uservouch uservouch = new Uservouch();
				uservouch.setUid(users.getUid());
				uservouch.setUvday(30);
				uservouch.setUvstartDate(DateUtils.getDateTimeFormat(new Date()));
				//获取当前时间的后几天
				Date d = new Date();  
				SimpleDateFormat fDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
				date = DateUtils.getDayAfter(d, 30);
				uservouch.setUvendDate(fDate.format(d));
				uservouch.setUvimage("/uploadFile/redmoney/dai.jpg");
				uservouch.setUvmoney(50.0);
				uservouch.setUstrat(0);
				int count = uservouchService.addModel(uservouch);
				if(count>0) {
					AuthebDetais authebDetais = new AuthebDetais();
					Userinfo u =userInfoService.seleUserinfoByuid(user.getUid());
					String uiname = u.getUiname();
					String uvmoney = Double.toString(uservouch.getUvmoney());
					authebDetais.setAdintroduct("您的好友"+uiname+"注册了亿信金融平台,恭喜您获取了"+uvmoney+"代金券");
					authebDetais.setAdtime(DateUtils.getDateTimeFormat(new Date()));
					authebDetais.setUiid(u.getUiid());
					authebDetais.setAdstatus(0);
					authebDetais.setAdstype(0);
					authebDetaisService.addModel(authebDetais);
				}
			}
		}catch (Exception e) {
			//日志
			e.printStackTrace();
			map.put("status","5");
			map.put("message", "注册失败,请稍后再试");
		}
		String aa = mapper.writeValueAsString(map);
		return aa;
	}
	
	
		/**
		 * 用户登入界面的登入方法
		 * */
		@RequestMapping(value="/userLogin")
		@ResponseBody
		public String mnlogin(HttpSession session,HttpServletResponse response,HttpServletRequest request) throws Exception {
			String user_name = request.getParameter("user_name");
			String pass_word = request.getParameter("pass_word");
			String issvae = request.getParameter("issvae");
			
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			String pas = pass_word.replace(" ", "");
			String ph = user_name.replace(" ", "");
			
			/**
			 * 1：密码加密
			 * 2：查找数据库
			 * 3:根据返回id查找user对象
			 * 4：把user对象放在session中
			 * */
			Object results = new SimpleHash("MD5", pas, ByteSource.Util.bytes("user"), 10);
			System.out.println(results.toString());
			//如果登入成功
			User user =  iUserService.userLoing(ph, results.toString());
			
			if(user!=null) {
				//修改登录时间
				user.setUloginTime(DateUtils.getDateTimeFormat(new Date()));
				iUserService.update(user);
				
				//加密URL
				String serchName = "http://127.0.0.1:8080/Finances/toindex";
				serchName = java.net.URLDecoder.decode(serchName,"UTF-8");
				System.out.println(serchName);
				map.put("url",serchName);
				map.put("comments","登入成功");
				/**
				 * 把用户信息存放进session
				 * */
				/**
				 * 现在查询包括user表和user_info表的记录
				 * */
				User user2 = iUserService.getModel(user);
				session.setAttribute("user",user2);
				
				/**
				 * 如果用户选择了保存账号密码
				 * 保存进cookies
				 * */
				if(issvae!=null && !issvae.equals("")) {
					if(issvae.equals("1")) {
						Cookie c1 = new Cookie("yxjruser",user2.getUphone());
						c1.setMaxAge(5*365*24*60*60);
						c1.setPath("/");
						Cookie c2 = new Cookie("yxjrpassword",user2.getUpassword());
						c2.setMaxAge(5*365*24*60*60);
						c2.setPath("/");
						response.addCookie(c1);
						response.addCookie(c2);
					}
				}
				
				//证明有值,登入成功
				map.put("status",1);
			}else {
				map.put("status",5);
				//map.put("status",0);
				map.put("message","账号密码输入错误或账号不存在");
				
			}
			
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);

			return aa;
	}
	/**
	 * 这里是在二维码扫描的时候进入的controller
	 * 1:最好是自适应模板
	 * 2:用户用手机扫描的时候进入页面
	 * 	2.1:页面显示用户的一些个人信息
	 * */	
	@RequestMapping(value="/toLoginHaveYaoqing")
	public ModelAndView toLoginHaveYaoqing(String phone) {
		ModelAndView mo = new ModelAndView();
		User user = new User();
		user.setUphone(phone);
		User user2 =  iUserService.getModel(user);
		mo.addObject("ortheruser",user2);
		mo.setViewName("views/front/qrcode");
		return mo;
	}	
	
	/**
	 * 在邀请好友微博分享进入的页面
	 * 
	 **/
	@RequestMapping(value="toLoginWeiBoJoin")
	public ModelAndView toLoginWeiBoJoin(String uinvite) {
		ModelAndView mo = new ModelAndView();
		User u = new User();
		u.setUinvite(uinvite);
		User user =iUserService.getModel(u);
		/**
		 * 统计
		 */
		//得到平台共注册人数
		List<User> allUser =iUserService.getAllModel(); 
		mo.addObject("allUser",allUser.size());
		
		//得到所有用户所赚取的全部收益
		List<Profit> allProfit = profitService.getAllModel();
		Double allMoneyProfit = 0.0;
		for (int i = 0; i < allProfit.size(); i++) {
			allMoneyProfit+=allProfit.get(i).getPfmoney();
		}
		mo.addObject("allMoneyProfit",allMoneyProfit);
		
		//得到用户投资完成的所有金额
		Fabiao fb = new Fabiao();
		fb.setFstatus(7);
		//BigDecimal是java.lang.Math不是基本数据类型 ,number1.add(number2)加
		BigDecimal allMoneyFabiao = new BigDecimal("0.0");
		List<Fabiao> allFabiao = fabiaoService.getAllModel();
		for (int j = 0; j < allFabiao.size(); j++) {
			BigDecimal allMoneyFa =allFabiao.get(j).getFmoney();
			allMoneyFabiao=allMoneyFabiao.add(allMoneyFa);
		}
		mo.addObject("allMoneyFabiao",allMoneyFabiao);
		//得到亿信金融平台运营时间天数
		String date = "2017-12-15";
		Date mindate = DateUtils.getDateFormat(date);
		Date maxdate = new Date();
		int day = DateUtils.getDay(mindate, maxdate);
		mo.addObject("allDay",day);
		mo.addObject("userUinvite",user);
		mo.setViewName("views/front/weiboIndex");
		return mo;
	}
	
	/**
	 * 取得UUID
	 * */
	public static String getUUID(){ 
		String uuid = UUID.randomUUID().toString(); 
		//去掉“-”符号 
		return uuid.replaceAll("-", "");
	}	
	
	/**
	 * 修改用户信息
	 * @throws JsonProcessingException 
	 * */
	@RequestMapping(value = "updateUser")
	@ResponseBody
	public int updateUser(User user,HttpSession session){
		int isUpdate = 0;
		try {
			if(user.getUpassword()!=null) {
				Object results = new SimpleHash("MD5", user.getUpassword(), ByteSource.Util.bytes("user"), 10);
				user.setUpassword(results.toString());
			}
			isUpdate = iUserService.update(user);
			System.out.println("修改成功");
			
			//重新加载user中的值
			User users = iUserService.getModel(user);
			session.setAttribute("user", users);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isUpdate;
	}
	/**
	 * 判断用户原密码是否正确
	 * */
	@RequestMapping(value = "getPwd")
	@ResponseBody
	public int surePwd(User user) {
		int isSure = 0;
		Object results = new SimpleHash("MD5", user.getUpassword(), ByteSource.Util.bytes("user"), 10);
		user.setUpassword(results.toString());
		User users = iUserService.getModel(user);
		if(users!=null) {
			isSure = 1;
		}
		return isSure;
	}
	
	/**
	 * 判断用户原密码是否正确
	 * */
	@RequestMapping(value = "getDealPwd")
	@ResponseBody
	public int sureDealPwd(Userinfo userinfo) {
		int isSure = 0;
		Object results = new SimpleHash("MD5", userinfo.getUidealpwd(), ByteSource.Util.bytes("userinfo"), 10);
		userinfo.setUidealpwd(results.toString());
		Userinfo userinfos = userInfoService.getModel(userinfo);
		if(userinfos!=null) {
			isSure = 1;
		}
		return isSure;
	}
	
	/**
	 * 退出前台登录
	 * */
	@RequestMapping(value="/logout")
	public String logout(HttpSession session,HttpServletResponse response,HttpServletRequest request) {
		if(session.getAttribute("user")!=null) {
			session.removeAttribute("user");
		}
		/**
		 * 清空客户端cookies‘
		 * */
		Cookie cookies[] = request.getCookies();  
	      if (cookies != null){  
	          for (int i = 0; i < cookies.length; i++)  {  
	              if (cookies[i].getName().equals("yxjruser"))     {  
	                  Cookie cookie = new Cookie("yxjruser","");//这边得用"",不能用null  
	                  cookie.setPath("/");//设置成跟写入cookies一样的  
	                  cookie.setMaxAge(0);
	                  response.addCookie(cookie);  
	              }
	              if(cookies[i].getName().equals("yxjrpassword")){
	            	  Cookie cookie = new Cookie("yxjrpassword","");//这边得用"",不能用null  
	                  cookie.setPath("/");//设置成跟写入cookies一样的  
	                  cookie.setMaxAge(0);  
	                  response.addCookie(cookie); 
	              }
	          }  
	      }  
		
		return "redirect:/tologin";
	}
	
	
	
	/**
	 * 修改用户的基本信息(交易密码以及需要认证的状态)
	 * */
	@RequestMapping(value = "updateUserInfo")
	@ResponseBody
	public int updateUserInfo(Userinfo userinfo,HttpSession session) {
		int isUpdate = 0;
		try {
			if(userinfo.getUidealpwd()!=null) {
				Object results = new SimpleHash("MD5", userinfo.getUidealpwd(), ByteSource.Util.bytes("userinfo"), 10);
				userinfo.setUidealpwd(results.toString());
			}
			userInfoService.update(userinfo);
			isUpdate = 1;
			
			//重新加载userinfo中的值
			Userinfo uinfo = userInfoService.getModel(userinfo);
			session.setAttribute("userinfo", uinfo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isUpdate;
	}
	
	/**
	 * 发送到邮箱中验证
	 * */
	@RequestMapping(value = "sendmailcheckuser")
	public String sendMailCheckUser(Userinfo userinfo,Model model) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userid",userinfo.getUiid());
		map.put("title", "忆信认证");
		map.put("email",userinfo.getUiemail());
		//调用方法
		boolean isSuccess = SendMailUtil.send(map,sendMailService);
		if(isSuccess){
			model.addAttribute("isgo",1);
		}else {
			model.addAttribute("isgo",0);
		}
		model.addAttribute("pageName", "myinfo");
		return "views/front/user/email_buffer";
	}
	
	/**
	 * 邮箱点击验证的controller
	 * */
	@RequestMapping(value = "emailcheck")
	public String emailCheck(Integer id,String email,Model model,HttpSession session) {
		Userinfo userinfo = new Userinfo();
		userinfo.setUiemail(email);
		userinfo.setUiid(id);
		userinfo.setUiemailstatus(1);
		int  isok = userInfoService.update(userinfo);
		
		//重新加载userinfo中的值
		Userinfo uinfo = userInfoService.getModel(userinfo);
		session.setAttribute("userinfo", uinfo);
		if(isok>0) {
			model.addAttribute("isok",1);
		}else {
			model.addAttribute("isok",2);
		}
		model.addAttribute("pageName", "myinfo");
		return "views/front/user/email_success";
	}
	
	/**
	 * 后台获取用户信息
	 * */
	@RequestMapping(value="selectiUserList")
	@ResponseBody
	public PageInfo selectiUserList(Integer page, Integer rows,User user) {
       Integer pageSize = (page /rows)+1;
		Integer count = iUserService.userCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		iUserService.selectPage(pageInfo,user);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	
	/**
	 * 根据用户id获取基本信息表中信息
	 * */
	@RequestMapping(value="findUserinfo")
	@ResponseBody
	public String findUserinfo(@RequestParam Integer uid,HttpServletResponse response)throws Exception {
		//防止数据乱码
		response.setCharacterEncoding("UTF-8");
		Userinfo ui = userInfoService.seleUserinfoByuid(uid);
		ObjectMapper ob = new ObjectMapper();
		String result = ob.writeValueAsString(ui);
		return result;
	}
	
	/**
	 * 根据用户注册手机号修改密码
	 * @throws JsonProcessingException 
	 * */
	@RequestMapping(value="findPwd")
	@ResponseBody
	public String findPwd(@RequestParam String uphone,@RequestParam String surepwd) throws JsonProcessingException {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			Object results = new SimpleHash("MD5", surepwd, ByteSource.Util.bytes("user"), 10);
			String upassword = results.toString();
			int count = iUserService.updatePwd(uphone,upassword);
			if(count>0) {
				map.put("status", 1);
				map.put("msg", "恭喜您,成功找回密码!");
			}else {
				map.put("status", 0);
				map.put("msg", "很遗憾,找回密码失败!");
			}
		}catch(Exception e) {
			map.put("status", 0);
			map.put("msg", "很遗憾,找回密码失败!");
			e.printStackTrace();
		}
		ObjectMapper om = new ObjectMapper();
		String result = om.writeValueAsString(map);
		return result;
	}
}
