package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.About;
import com.p2p.pojo.Role;
import com.p2p.service.back.AboutService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="back/admin")
public class AboutController {
	@Resource(name="aboutServiceImpl")
	private AboutService aboutService;
	
	@RequestMapping(value="selectAboutList")
	@ResponseBody
	public PageInfo  selectAboutList(Integer page, Integer rows) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
		Integer pageSize = (page /rows)+1;
		//得到总的页数
		Integer count = aboutService.aboutCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		aboutService.selectPage(pageInfo);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	//增加
	@RequestMapping(value="insertAbout")
	@ResponseBody
	public int insertAbout(About about,HttpServletRequest request,MultipartFile[] upfile) throws Exception {
		String filepath = UtilController.uploadReNames(upfile,request.getSession());
		about.setAbimage(filepath);
		int count = aboutService.addModel(about);
		return count;
	}
	//删除
	@RequestMapping(value ="deleteAbout")
	@ResponseBody
	public  int deleteAbout(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String abid = (String) idStr[i];
			About about = new About();
			about.setAbid(Integer.valueOf(abid));
			count =aboutService.delete(about);
		}
		return count;
	}
	//修改
		@RequestMapping(value = "updateAbout")
		@ResponseBody
		public  int updateAbout(About about,HttpServletRequest request,MultipartFile[] upfile){  
			String filepath = UtilController.uploadReNames(upfile,request.getSession());
			about.setAbimage(filepath);
			int count = aboutService.update(about);
			return count;
		}
}
