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
import com.p2p.pojo.Video;
import com.p2p.service.back.AboutService;
import com.p2p.service.back.VideoService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="back/admin")
public class VideoController {
	@Resource(name="videoServiceImpl")
	private VideoService videoService;
	
	@RequestMapping(value="selectVideoList")
	@ResponseBody
	public PageInfo  selectVideoList(Integer page, Integer rows) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
		Integer pageSize = (page /rows)+1;
		//得到总的页数
		Integer count = videoService.videoCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		videoService.selectPage(pageInfo);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	//增加
	@RequestMapping(value="insertVideo")
	@ResponseBody
	public int insertVideo(Video video,HttpServletRequest request,MultipartFile[] upfile) throws Exception {
		if(upfile.length!=0) {
			String filepath = UtilController.uploadReNames(upfile,request.getSession());
			String[] aa =  filepath.split(",");
			video.setVimgurl(aa[0]);
			video.setVvurl(aa[1]);
		}
		int count = videoService.addModel(video);
		return count;
	}
	//删除
	@RequestMapping(value ="deleteVideo")
	@ResponseBody
	public  int deleteVideo(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String vid = (String) idStr[i];
			Video video = new Video();
			video.setVid(Integer.valueOf(vid));
			count =videoService.delete(video);
		}
		return count;
	}
	//修改
		@RequestMapping(value = "updateVideo")
		@ResponseBody
		public  int updateVideo(Video video,HttpServletRequest request,MultipartFile[] upfile){  
			if(upfile.length!=0) {
				String filepath = UtilController.uploadReNames(upfile,request.getSession());
				String[] aa =  filepath.split(",");
				video.setVimgurl(aa[0]);
				video.setVvurl(aa[1]);
			}
			int count = videoService.update(video);
			return count;
		}
}
