package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.Uservouch;
import com.p2p.service.back.UservouchService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="/back/admin")
public class UservouchController {
	@Resource(name="uservouchServiceImpl")
	private UservouchService uservouchService;
	
	@RequestMapping(value="selectUservouchList")
	@ResponseBody
	public PageInfo selectUservouchList(Integer page,Integer rows) {
		 Integer pageSize = (page /rows)+1;
		Integer count = uservouchService.UservouchyCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		uservouchService.selectPage(pageInfo);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	//实现新增
			@RequestMapping(value="insertUservouch")
			@ResponseBody
			public int insertUservouch(Uservouch uservouch){
				int count = uservouchService.addModel(uservouch);
				return count;
	}
			//更新
			@RequestMapping(value="updateUservouch")
			@ResponseBody
			public int updateUservouch(Uservouch uservouch) {
				int  count = uservouchService.update(uservouch);
				return count;
				
			}
			//删除
			@RequestMapping(value ="deleteUservouch")
			@ResponseBody
			public  int deleteUservouch(String ids){ 
				int count = 0;
				String[] idStr = ids.split(",");
				for (int i = 0; i < idStr.length;i++) {
					String uvid = (String) idStr[i];
					Uservouch uservouch = new Uservouch();
					uservouch.setUvid(Integer.valueOf(uvid));;
					count =uservouchService.delete(uservouch);
				}
				return count;
			}
}
