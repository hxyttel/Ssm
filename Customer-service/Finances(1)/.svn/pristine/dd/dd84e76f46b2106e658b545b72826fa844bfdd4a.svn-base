package com.p2p.controller.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.Activity;
import com.p2p.service.front.ActivityFrontService;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-19
 * 操作前台员工的mapper
 * */
@Controller
public class ActivityFrontController {
	@Resource(name="activityServiceFrontImpl")
	private ActivityFrontService activityFrontService;
	//前台查询
		@RequestMapping("listActivity")
		public String listActivity(Model model) {
			@SuppressWarnings("unused")
			List<Activity> listActivity = activityFrontService.getAllModel();
			model.addAttribute("listActivity", listActivity);
			return "/views/front/activity";
		}
	@RequestMapping("activityName")
	public String activityName(Model model,Integer atid) {
		List<Activity> activityName = activityFrontService.activityName(atid);
		model.addAttribute("activityName", activityName);
		return "/views/front/activity";
	}
}
