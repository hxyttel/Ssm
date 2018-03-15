package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.service.back.MessageUtilService;
import com.p2p.service.back.SendMsgService;
import com.p2p.util.MessageBenas;

@Controller
@RequestMapping("demo")
public class DemoController {
	
	@Resource(name="sendMsgServiceImpl")
	private SendMsgService sendmsg;
	
	@Resource(name="messageUtilServiceImpl")
	private MessageUtilService messageUtil;
	
	
	private  Map<String,Object> map = new HashMap<String,Object>();
	
	@RequestMapping("demo1")
	@ResponseBody
	public String demo1() throws Exception {
		SendMsgUtil send = new SendMsgUtil();
		//验证码
		map.put("yzcode", 12345);
		send.Send("18970786473",MessageBenas.MSG_REGCODE, map,sendmsg,messageUtil);
		return "ok";
	}
	
	@RequestMapping("demo2")
	@ResponseBody
	public String demo2() throws Exception {
		SendMsgUtil send = new SendMsgUtil();
		//短信登入提示
		map.put("userphone", "杨吊吊");
		send.Send("18296719481",MessageBenas.MSG_LOGING, map,sendmsg,messageUtil);
		
		return "ok";
	}
	
	@RequestMapping("demo3")
	@ResponseBody
	public String demo3() throws Exception {
		SendMsgUtil send = new SendMsgUtil();
		//短信充值提示
		map.put("userphone", "杨吊吊");
		map.put("money",1200);
		
		send.Send("18296719481",MessageBenas.MSG_LOGING, map,sendmsg,messageUtil);
		return "ok";
	}
	
	@RequestMapping("demo4")
	@ResponseBody
	public String demo4() throws Exception {
		SendMsgUtil send = new SendMsgUtil();
		//短信投资提示
		map.put("userphone", "杨吊吊");
		map.put("project","新手借款项目");
		map.put("money",1200);
		
		send.Send("18296719481",MessageBenas.MSG_LOGING, map,sendmsg,messageUtil);
		return "ok";
	}
	
	@RequestMapping("demo5")
	@ResponseBody
	public String demo5() throws Exception {
		//短信收到本金或利息
		SendMsgUtil send = new SendMsgUtil();
		//短信投资提示
		map.put("userphone", "杨吊吊");
		map.put("project","新手借款项目");
		map.put("money",1200);
		map.put("or", "本金");
		
		send.Send("18296719481",MessageBenas.MSG_LOGING, map,sendmsg,messageUtil);
		return "ok";
	}
	
	@RequestMapping("demo6")
	@ResponseBody
	public String demo6() throws Exception {
		//提现
		SendMsgUtil send = new SendMsgUtil();
		//短信充值提示
		map.put("userphone", "杨吊吊");
		map.put("money",1200);
		
		send.Send("18296719481",MessageBenas.MSG_LOGING, map,sendmsg,messageUtil);
		return "";
	}
	
	
	@RequestMapping("demo7")
	@ResponseBody
	public String demo7() throws Exception {
		//短信活动公告提示
		SendMsgUtil send = new SendMsgUtil();
		//短信充值提示
		map.put("project", "首房购物");
		send.Send("18296719481",MessageBenas.MSG_LOGING, map,sendmsg,messageUtil);
		return "ok";
	}
	
}
