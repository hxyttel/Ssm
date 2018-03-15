package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-26
 * 操作后台公告类型的service 
 * */
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Noticetype;
import com.p2p.service.back.NoticeTypeService;
import com.p2p.util.PageInfo;
@Controller
@RequestMapping("/back/admin")
public class NoticeTypeController {
	@Resource(name="noticeTypeServiceImpl")
	private NoticeTypeService noticeTypeService;
	@RequestMapping("pageNoticeType")
	@ResponseBody
	//后台分页查询
	public PageInfo pageNoticeType(Integer page,Integer rows,Noticetype noticetype) {
		Integer pageSize = (page /rows)+1;
		Integer count = noticeTypeService.countNoticeType();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		noticeTypeService.pageNoticeType(pageInfo, noticetype);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	@RequestMapping("insertNoticeType")
	@ResponseBody
	//后台增加
	public int insertNoticeType(Noticetype noticetype) {
		int count = noticeTypeService.addModel(noticetype);
		return count;
	}
	//后台修改
	@RequestMapping("updateNoticeType")
	@ResponseBody
	public int updateNoticeType(Noticetype noticetype) {
		int count = noticeTypeService.update(noticetype);
		return count;
	}
	@RequestMapping("deleteNoticeType")
	@ResponseBody
	//后台删除
	public int deleteNoticeType(String ids) {
		int count = 0;
		String[] idStr = ids.split(",");
		for(int i=0;i<idStr.length;i++) {
			String ntid = (String)idStr[i];
			Noticetype noticetype = new Noticetype();
			noticetype.setNtid(Integer.valueOf(ntid));
			count = noticeTypeService.delete(noticetype);
		}
		return count;
	} 
}
