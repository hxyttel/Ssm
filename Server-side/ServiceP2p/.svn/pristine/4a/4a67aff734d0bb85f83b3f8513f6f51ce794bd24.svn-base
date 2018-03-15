package com.p2p.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Admin;
import com.p2p.services.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController{
	private Logger logger=Logger.getLogger(AdminController.class);
	@Resource(name="adminServiceImpl")
	private AdminService adminService;
	
	@RequestMapping("/list")
	public String list(Model model){
		List<Admin> adminList = adminService.list();
		model.addAttribute("adminList", adminList);
		return "/ntps/admin";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable Integer id){
		adminService.delete(id);
		return "redirect:/admin/list";
	}
	@RequestMapping("/update")
	public String update(Admin admin,HttpServletRequest request){
			
		adminService.update(admin);
		request.getSession().setAttribute("admin", admin);
		return "redirect:/admin/list";
	}
	@RequestMapping("selectAdmin")
	public String selectAdmin(Model model,Integer id) {
		if(id==null) {
			return "/ntps/login";
		}else {
			Admin admin=adminService.getById(id);
			model.addAttribute("admin", admin);
			return "/ntps/profile";
		}
	}
	@RequestMapping("/add")
	public String add(Admin admin) {
		Object result = new SimpleHash("MD5", admin.getApassword(), ByteSource.Util.bytes(admin.getAphone()), 1);
		String pass=result.toString();
		admin.setApassword(pass);
		adminService.add(admin);
		return "redirect:/admin/list";
		
	}
	@RequestMapping("login")
	public String login(Admin admin,String remFlag,HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");  
		/*Admin adm=adminService.login(admin);
		if(adm==null) {
			request.getSession().setAttribute("message","密码或账户错误");
			return "/ntps/login";
		}*/
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(admin.getAphone(),admin.getApassword());
		try {
			subject.login(token);
		} catch(UnknownAccountException uae){
			logger.info("there is no user with username of "+ token.getPrincipal());
			request.getSession().setAttribute("message","密码或账户错误");
			return "/ntps/login";
		}
		catch(IncorrectCredentialsException ice) {
			logger.info("password for account "+ token.getPrincipal() +" was inoorrect!");
			request.getSession().setAttribute("message","密码或账户错误");
			return "/ntps/login";
			
		}
		catch(Exception ae){
			request.getSession().setAttribute("message","密码或账户错误");
			return "/ntps/login";
		}
		if("on".equals(remFlag)){ //"1"表示用户勾选记住密码
             /*String cookieUserName = Utils.encrypt(name);
             String cookiePwd = Utils.encrypt(passWord);
             String loginInfo = cookieUserName+","+cookiePwd;*/
        	 response.setCharacterEncoding("utf-8");
             String loginInfo = admin.getAphone()+"#"+admin.getApassword();
             Cookie userCookie=new Cookie("loginInfo",loginInfo); 

             userCookie.setMaxAge(3*24*60*60);   //存活期为一个月 30*24*60*60
             userCookie.setPath("/");
             response.addCookie(userCookie); 
         }
		Admin adm=adminService.login(admin.getAphone());
		request.getSession().setAttribute("admin",adm);
		request.getSession().removeAttribute("message");
		return "redirect:index";
	}
	@RequestMapping("index")
	public String index() {
		return "/ntps/index";
	}
	public static void main(String[] args) {
		String phone="龙";
		Object result = new SimpleHash("MD5", "123456", ByteSource.Util.bytes(phone), 1);
		String pass=result.toString();
		System.out.println(pass);
	}
	@RequestMapping("exit")
	public String exit(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return "/ntps/login";
	}
}
