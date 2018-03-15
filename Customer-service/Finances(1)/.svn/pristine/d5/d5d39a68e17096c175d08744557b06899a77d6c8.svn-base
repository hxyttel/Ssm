package com.p2p.controller.front;


/**
 * 操作人：朱勇峰
 * 操作时间：2018年1月5日09:30:43
 * 预约发标
 * */
import java.math.BigDecimal;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.controller.back.UtilController;
import com.p2p.pojo.AuthebDetais;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.User;
import com.p2p.pojo.Userinfo;
import com.p2p.service.back.AuthebDetaisService;
import com.p2p.service.back.FabiaobackService;
import com.p2p.service.front.UserInfoService;
import com.p2p.util.DateUtils;

@Controller
@RequestMapping("/userFabiao")
public class UserFabioController {
	
	@Resource(name="fabiaobackServiceImpl")	
	private FabiaobackService fabiaoService;
	
	//认证详情表
	@Resource(name="authebDetaisServiceImpl")
	private AuthebDetaisService authebDetaisService;  //消息
	
	@Resource(name="userInfoServiceImpl")
	private UserInfoService userInfoService;  //用户基本信息
	
	
	
	@RequestMapping("/insertFabiao")
	@ResponseBody
	public int insertFabiao(Fabiao fabiao,HttpSession session,MultipartFile[] upfiles,MultipartFile upfile, HttpServletRequest request) throws Exception {
		
		String filepath = "";
		if(upfiles.length!=0) {
			filepath = UtilController.uploadReNames(upfiles,request.getSession());
			String[] aa =  filepath.split(",");
			fabiao.setFimage(aa[0]);
		}
		fabiao.setForderimg(filepath);
		
		//String fimage = UtilController.uploadFrom(request,file);
		//fabiao.setFimage(fimage);
		String fsecurity = UtilController.uploadFrom(request,upfile);
		fabiao.setFsecurity(fsecurity);
		
		User user = (User)session.getAttribute("user");
		fabiao.setUid(user.getUid());
		BigDecimal big = new BigDecimal("0.00");
		BigDecimal ly = new BigDecimal("0.09");
		BigDecimal sy = new BigDecimal("0.09");
		BigDecimal jx = new BigDecimal("0.01");
		fabiao.setFroe(ly);
		fabiao.setFincrease(jx);
		fabiao.setFrate(sy);
		fabiao.setFendmoney(big);
		fabiao.setFendtime(DateUtils.getDateTimeFormat(new Date()));
		fabiao.setFminmoney(big);
		fabiao.setFmaxmoney(big);
		fabiao.setFrate(big);
		fabiao.setFbidstatus(0);
		fabiao.setFstatus(6);
		
		int count = fabiaoService.addModel(fabiao);
		if(count>0) {
			Userinfo userinfo =userInfoService.seleUserinfoByuid(fabiao.getUid());
			AuthebDetais authebDetais = new AuthebDetais();
			authebDetais.setAdintroduct("用户: "+userinfo.getUiname()+",已申请发标,需后台管理员审核通过!");
			authebDetais.setAdtime(DateUtils.getDateTimeFormat(new Date()));
			authebDetais.setAdstype(2); //2代表用户发标审核
			authebDetais.setAdstatus(0);
			authebDetais.setUiid(userinfo.getUiid());
			authebDetaisService.addModel(authebDetais);
		}
		return count;
	}
	
	
	@RequestMapping("/checkuserfabiao")
	@ResponseBody
	public int checkuserfabiao(HttpSession session) {
		User user = (User)session.getAttribute("user");
		Fabiao ff  = new Fabiao();
		ff.setUid(user.getUid());
		Fabiao fabiao = fabiaoService.getModel(ff);
		if(fabiao!=null) {
			return 1;
		}else {
			return 0;
		}
	}
	
	
}
