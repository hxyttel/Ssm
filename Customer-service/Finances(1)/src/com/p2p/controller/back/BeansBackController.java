package com.p2p.controller.back;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.AuthebDetais;
import com.p2p.pojo.Role;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Userlevel;
import com.p2p.service.back.AuthebDetaisService;
import com.p2p.service.back.RoleService;
import com.p2p.service.back.UserlevelService;

/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是访问后台页面的
 * */
@Controller
@RequestMapping("/back")
public class BeansBackController {
	  
	@Resource(name="roleServiceImpl")
	private RoleService roleService;
	
	@Resource(name="userlevelServiceImpl")
	private UserlevelService userlevelService;
	
	@Resource(name="authebDetaisServiceImpl")
	private AuthebDetaisService authebDetaisService;  //消息
	
	/**
	 * 进入后台登陆界面
	 * */
	@RequestMapping(value="/tologin")
	public String toBackLogin(HttpServletRequest request){
		return "views/back/login";
	}
	
	/**
	 * 进入后台主界面
	 * */
	@RequestMapping(value="/toindex")
	public String toBackIndex(HttpServletRequest request, ModelMap model){
		HttpSession session = request.getSession(true);  
        Subject employee = SecurityUtils.getSubject();  
        String  empName= (String) employee.getPrincipal();  
        session.setAttribute("empName", empName);  
		return "redirect:/backindex/indexall";
		
	}
	
	
	/**
	 * 进入后台权限页面
	 * */
	@RequestMapping(value="/toRole")
	public String toBackRole(HttpServletRequest request){
		return "views/back/role";
	}
	
	/**
	 * 进入员工页面
	 * */
	@RequestMapping(value="/toEmploye")
	public String toBackEmploy(HttpServletRequest request) {
		List<Role> rolelist = roleService.seleRoleList();
		request.setAttribute("rolelist", rolelist);
		return "views/back/employe";
	}
	/**
	 * 进入成长等级页面
	 * */
	@RequestMapping(value="/toUserlevel")
	public String toBackUserlevel(HttpServletRequest request) {
		List<Userinfo> uselist = userlevelService.seleUserlevelList();
		request.setAttribute("uselist", uselist);
		return "views/back/userlevel";
	}
	/**
	 * 进入红包页面
	 * */
	@RequestMapping(value="/toRedmoney")
	public String toBackRedmoney(HttpServletRequest request) {
		List<Userinfo> uselist = userlevelService.seleUserlevelList();
		request.setAttribute("uselist", uselist);
		return "views/back/redmoney";
	}
	/**
	 * 进入提现页面
	 * */
	@RequestMapping(value="/toWithdrawals")
	public String toBackWithdrawals(HttpServletRequest request) {
		List<Userinfo> uselist = userlevelService.seleUserlevelList();
		request.setAttribute("uselist", uselist);
		return "views/back/withdrawals";
	}
	/**
	 * 进入代金券页面
	 * */
	@RequestMapping(value="/toUservouch")
	public String toBackUservouch(HttpServletRequest request) {
		List<Userinfo> uselist = userlevelService.seleUserlevelList();
		request.setAttribute("uselist", uselist);
		return "views/back/uservouch";
	}
	/**
	 * 修改消息表已读和未读状态
	 * **/
	  @RequestMapping(value="/toAuthIdCardStatus")
	  public String toAuthIdCardStatus(Integer adstype,Integer adid) {
		  AuthebDetais authebDetais = new AuthebDetais();
		  authebDetais.setAdid(adid);
		  authebDetais.setAdstatus(1);
		  authebDetaisService.update(authebDetais);
		  if(adstype==1) {
			  return "views/back/idcard";
		  }else if(adstype==2){
			  return "views/back/shfabiao";
		  }
		  else{
			  return "view/back/idcard";
		  }
		  
	  }
	
	/**
	 *进入实名认证页面 
	 * **/
	@RequestMapping(value="toAuthIdCard")
	public String toAuthIdCard() {
		return "views/back/idcard";
	}
	
	/**
	 * 进入提现认证页面
	 * */
	@RequestMapping(value="toAuthWithDrawls")
	public String toAuthWithDrawls() {
		return "view/back/AuthWithDrawls";
	}
}
