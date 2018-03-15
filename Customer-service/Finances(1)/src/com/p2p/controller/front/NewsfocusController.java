package com.p2p.controller.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.controller.back.UtilController;
import com.p2p.pojo.Newsfocus;
import com.p2p.service.front.NewsfocusService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="/back/local")
public class NewsfocusController {
	@Resource(name="newsfocusServiceImpl")
	private NewsfocusService newsfocusService;
	
	
	//实现分页查询
	@RequestMapping(value="selectNewsfocusList")
	@ResponseBody
	public PageInfo  selectRoleList(Integer page, Integer rows,Newsfocus newsfocus) {
	Integer pageSize = (page / rows)+1;
		
		//得到总的页数
		Integer count = newsfocusService.newsfocusCount(newsfocus);
		
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		newsfocusService.selectPage(pageInfo,newsfocus);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	
	//实现新增
	@RequestMapping(value="insertNewsfocus")
	@ResponseBody
	public int insertRole(HttpServletRequest request,Newsfocus newsfocus,MultipartFile file) throws Exception {
		String path = UtilController.uploadFrom(request, file);
		newsfocus.setNfimage(path);
		int count = newsfocusService.addModel(newsfocus);
		return count;
	}
	
	//修改角色信息
	@RequestMapping(value = "updateNewsfocus")
	@ResponseBody
	public  int updateRole(Newsfocus newsfocus){  
		int count = newsfocusService.update(newsfocus);
		return count;
	}
	
	//删除
	@RequestMapping(value ="deleteNewsfocus")
	@ResponseBody
	public  int delRole(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String nfid = (String) idStr[i];
			Newsfocus newsfocus = new Newsfocus();
			newsfocus.setNfid(Integer.valueOf(nfid));
			count =newsfocusService.delete(newsfocus);
		}
		return count;
	}
	
}
