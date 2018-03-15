package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Notice;
import com.p2p.service.back.NoticeService;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-25
 * 操作后台员工的service
 * */
import com.p2p.util.PageInfo;
@Controller
@RequestMapping("/back/admin")
public class NoticeController {
	@Resource(name="noticeServiceImpl")
	private NoticeService noticeService;
	@RequestMapping("pageNotice")
	@ResponseBody
	//后台分页查询
	public PageInfo pageNotice(Integer page,Integer rows,Notice notice) {
		Integer pageSize = (page /rows)+1;
		Integer count = noticeService.countNotice();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String ,Object>();
		pageInfo.setCondition(map);
		noticeService.pageNotice(pageInfo, notice);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	@RequestMapping("insertNotice")
	@ResponseBody
	//后台公告增加
	public int insertNotice(Notice notice) {
		int count = noticeService.addModel(notice);
		return count;
	}
	@RequestMapping("updateNotice")
	@ResponseBody
	//后台公告表修改
	public int updateNotice(Notice notice) {
		int count = noticeService.update(notice);
		return count;
	}
	//后台公告表删除
	@RequestMapping("deleteNotice")
	@ResponseBody
	public int deleteNotice(String ids) {
		int count = 0;
		String[] idStr = ids.split(",");
		for(int i=0;i<ids.length();i++) {
			String nid = (String)idStr[i];
			Notice notice = new Notice();
			notice.setNid(Integer.valueOf(nid));
			count = noticeService.delete(notice);
		}
		return count;
	}
}

