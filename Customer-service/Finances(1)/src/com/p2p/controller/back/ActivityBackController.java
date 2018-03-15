package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.Activity;
import com.p2p.service.back.ActivityBackService;
import com.p2p.util.PageInfo;

/**
 * 操作人:吴光海
 * 创建时间:2017-12-19
 * 操作后台员工的mapper
 * */
@Controller
@RequestMapping("/back/admin")
public class ActivityBackController {
	@Resource(name="activityBackServiceImpl")
	private ActivityBackService activityService;
	//分页查询
	@RequestMapping("pageActivity")
	@ResponseBody
	public PageInfo pageActivity(Integer page,Integer rows,Activity activity) {
		Integer pageSize = (page /rows)+1;
		Integer count = activityService.countActivity();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		activityService.pageActivity(pageInfo, activity);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	@RequestMapping("insertActivity")
	@ResponseBody
	//后台增加
	public int insertActivity(HttpServletRequest request,Activity activity,MultipartFile myfile) throws Exception {
		String path = UtilController.uploadFrom(request,myfile);
		activity.setAtimag(path);
		int count = activityService.addModel(activity);
		return count;
	}

	@RequestMapping("updateActivity")
	@ResponseBody
	//后台修改
	public int updateActivity(Activity activity) {
		int count = activityService.update(activity);
		return count;
	}
	//删除
	@RequestMapping("deleteActivity")
	@ResponseBody
	//后台删除
	public int deleteActivity(String ids) {
		int count = 0;
		String[] idStr = ids.split(",");
		for(int i=0;i<idStr.length;i++) {
			String atid = (String)idStr[i];
			Activity activity = new Activity();
			activity.setAtid(Integer.valueOf(atid));
			count = activityService.delete(activity);
		}
		return count;
	}
}
