package com.p2p.controller.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.Notice;
import com.p2p.service.front.NoticeFontSrvice;

@Controller
@RequestMapping("/font")
public class NoticeFontController {
	@Resource(name="noticeFontServiceImpl")
	private NoticeFontSrvice noticeFontSrvice;
	//前台查询
	@RequestMapping("listNotice")
	public String listNotice(Model model) {
		List<Notice> noticeList = noticeFontSrvice.getAllModel();
		model.addAttribute("noticeList", noticeList);
		return "/views/front/notice";
	}
	@RequestMapping("selectType")
	public String selectType(Integer nid,Model model) {
		List<Notice> listnotices =  noticeFontSrvice.selectName(nid);
		model.addAttribute("noticeList", listnotices);
		return "/views/front/notice";
	}
}
