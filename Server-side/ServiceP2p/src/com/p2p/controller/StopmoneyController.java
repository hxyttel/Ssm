package com.p2p.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.Stopmoney;
import com.p2p.services.StopmoneyService;

@Controller
public class StopmoneyController {
	@Resource(name="stopmoneyServiceImpl")
	private StopmoneyService stopmoneyService;
	@RequestMapping("listStopmoney")
	public String listStopmoney(Model model) {
		List<Stopmoney> listStopmoney = stopmoneyService.list();
		model.addAttribute("listStopmoney",listStopmoney);
		return "/ntps/table-stopmoney";
	}
	@RequestMapping("likeStopmoney")
	public String likeStopmoney(Stopmoney stopmoney, Model model) {
		List<Stopmoney> likeStopmoney = stopmoneyService.likeStopmoney(stopmoney);
		model.addAttribute("listStopmoney", likeStopmoney);
		return "/ntps/table-stopmoney";
	}
}
