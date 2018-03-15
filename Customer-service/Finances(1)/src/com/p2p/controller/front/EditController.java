package com.p2p.controller.front;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.controller.back.UtilController;
import com.p2p.util.ContextUtils;

@Controller
public class EditController {
	
	@RequestMapping("/addhtml")
	public String addHtml(HttpServletRequest request,String info) {
		String msgContentUrl="/uploadFile/attached/news/"+ContextUtils.getFilename()+".html";
		//生成html页面
		UtilController.makehtml(info, msgContentUrl, request);
		System.out.println("在线编辑器生成的HTML代码是"+info);
		System.out.println("文件路径是"+msgContentUrl);
		return "要跳转的页面";
	}
}
