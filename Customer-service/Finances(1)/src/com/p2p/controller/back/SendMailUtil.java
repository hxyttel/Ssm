package com.p2p.controller.back;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.p2p.pojo.SendMail;
import com.p2p.service.back.SendMailService;
import com.p2p.util.MailInfo;
import com.p2p.util.MailSendUtil;

public class SendMailUtil {
	
	/**
	 * 单发(邮箱认证)
	 * */
	public static boolean send(Map<String,Object> map,SendMailService service){
		boolean isSuccess = false;
        String mail = map.get("email").toString(); //发送对象的邮箱
        String title = map.get("title").toString();
    
        SendMail sendMail =  service.findUserMail(1);
        if(sendMail==null) {
        	sendMail = new SendMail();
        	sendMail.setFormName("httpwmm@163.com");
        	sendMail.setHost("smtp.163.com");
        	sendMail.setPassword("A123456");
        }
        MailInfo info = new MailInfo(sendMail.getHost(),sendMail.getFormName(),sendMail.getPassword(),sendMail.getFormName());
        info.setToAddress(mail);
        info.setSubject(title);
        Map<String,Object> maps = new HashMap<String,Object>();
        maps.put("userid", map.get("userid"));
        maps.put("email", map.get("email"));
        StringBuilder msg = SendMailUtil.createEmail(maps);
        info.setContent(msg.toString());
        MailSendUtil sms = new MailSendUtil();
        try {
			sms.sendHtmlMail(info);
			isSuccess = true;
			System.out.println("邮箱发送完成");
		} catch (Exception e) {
			e.printStackTrace();
		}
        return isSuccess;
	}
	
	/**
	 * 群发(邮箱认证)
	 * */
	public static boolean sendalluer(Map<String,Object> map,SendMailService service){
		boolean isSuccess = false;
		
		/**
		 * 需要在调用的controller中将map的key是:alluser,value存放的是list,
		 * 先将邮箱放到list中,再将list存放到map中
		 * */
		List<String> mylist = new ArrayList<String>();
		mylist = (List<String>)map.get("alluser");
		
		
        String[] address=(String[])mylist.toArray();
        
        String title = map.get("title").toString();
    
        SendMail sendMail =  service.findUserMail(1);
        
        MailInfo info = new MailInfo(sendMail.getHost(),sendMail.getFormName(),sendMail.getPassword(),sendMail.getFormName());
        info.setAddress(address);
        info.setSubject(title);
        Map<String,Object> maps = new HashMap<String,Object>();
        maps.put("userid", map.get("userid"));
        maps.put("email", map.get("email"));
        StringBuilder msg = SendMailUtil.createEmail(maps);
        info.setContent(msg.toString());
        MailSendUtil sms = new MailSendUtil();
        try {
			sms.sendHtmlMailalluser(info);
			isSuccess = true;
			System.out.println("邮箱发送完成");
		} catch (Exception e) {
			e.printStackTrace();
		}
        return isSuccess;
    }
	
	/**
	 * 邮箱中显示的内容(需要点击以下链接后才可认证)
	 * */
	public static StringBuilder createEmail(Map<String,Object> map) {
        StringBuilder emailContent = new StringBuilder(""
        	+ "<!DOCTYPE html>"
        	+ "<html>"
        		+ "<head>"
	        		+ "<meta charset='UTF-8'>"
	        		+ "<title>亿信金融邮箱验证</title>"
	        		+ "<style type='text/css'>"
		        		+ ".container{ "
			        		+ "font-family: 'Microsoft YaHei';"
			        		+ "width: 600px;"
			        		+ "margin: 0 auto;"
			        		+ "padding: 8px;"
			        		+ "border: 3px dashed #db303f;"
			        		+ "border-radius: 6px;"
		        		+ "}"
		        		+ ".title{"
		        			+ "text-align: center;"
		        			+ "color: #db303f; "
		        		+ "}"
		        		+ ".content{"
		        			+ "text-align: justify;"
		        			+ "color: #717273;"
		        			+ "font-weight: 600;"
		        		+ "}"
	        		+ "</style>"
        		+ "</head>"
        		+ "<body>"
        			+ "<div class='container'>"
        				+ "<h2 class='title'>忆信金融</h2>"
        				+ "<p class='content'>点击验证码"
        					+ "<a href="+"http://127.0.0.1:8080/Finances/user/emailcheck?id="+map.get("userid")+"&email="+map.get("email")+""+">请点击</a>"
        				+ "</p>"
        			+ "</div>"
        		+ "</body>"
        	+ "</html>");
        return emailContent;
    }
	
	/**
	 * 单发(邮箱修改密码)
	 * */
	public static boolean sendUpdatePwd(Map<String,Object> map,SendMailService service){
		boolean isSuccess = false;
        String mail = map.get("email").toString(); //发送对象的邮箱
        String title = map.get("title").toString();
    
        SendMail sendMail =  service.findUserMail(1);
        if(sendMail==null) {
        	sendMail = new SendMail();
        	sendMail.setFormName("httpwmm@163.com");
        	sendMail.setHost("smtp.163.com");
        	sendMail.setPassword("A123456");
        }
        MailInfo info = new MailInfo(sendMail.getHost(),sendMail.getFormName(),sendMail.getPassword(),sendMail.getFormName());
        info.setToAddress(mail);
        info.setSubject(title);
        Map<String,Object> maps = new HashMap<String,Object>();
        maps.put("uphone", map.get("uphone"));
        StringBuilder msg = SendMailUtil.emailUpdatePwd(maps);
        info.setContent(msg.toString());
        MailSendUtil sms = new MailSendUtil();
        try {
			sms.sendHtmlMail(info);
			isSuccess = true;
			System.out.println("邮箱发送完成");
		} catch (Exception e) {
			e.printStackTrace();
		}
        return isSuccess;
	}
	
	/**
	 * 邮箱中显示的内容(需要点击以下链接后才可认证)
	 * */
	public static StringBuilder emailUpdatePwd(Map<String,Object> map) {
        StringBuilder emailContent = new StringBuilder(""
        	+ "<!DOCTYPE html>"
        	+ "<html>"
        		+ "<head>"
	        		+ "<meta charset='UTF-8'>"
	        		+ "<title>亿信金融找回密码</title>"
	        		+ "<style type='text/css'>"
		        		+ ".container{ "
			        		+ "font-family: 'Microsoft YaHei';"
			        		+ "width: 600px;"
			        		+ "margin: 0 auto;"
			        		+ "padding: 8px;"
			        		+ "border: 3px dashed #db303f;"
			        		+ "border-radius: 6px;"
		        		+ "}"
		        		+ ".title{"
		        			+ "text-align: center;"
		        			+ "color: #db303f; "
		        		+ "}"
		        		+ ".content{"
		        			+ "text-align: justify;"
		        			+ "color: #717273;"
		        			+ "font-weight: 600;"
		        		+ "}"
	        		+ "</style>"
        		+ "</head>"
        		+ "<body>"
        			+ "<div class='container'>"
        				+ "<h2 class='title'>忆信金融——找回密码</h2>"
        				+ "<p class='content'>找回密码"
        					+ "<a href="+"http://127.0.0.1:8080/Finances/userInfo/setPwd?uphone="+map.get("uphone")+""+">去设置密码</a>"
        				+ "</p>"
        			+ "</div>"
        		+ "</body>"
        	+ "</html>");
        return emailContent;
    }
	
}
