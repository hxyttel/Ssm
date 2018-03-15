package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Record;
import com.p2p.service.back.RecordService;
import com.p2p.util.PageInfo;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-28
 * */
@Controller
@RequestMapping("/back/admin")
public class RecordController {
	@Resource(name="recordServiceImpl")	
	private RecordService recordService;
	@RequestMapping("pageRecord")
	@ResponseBody
	//后台管理员操作记录表分页查询
	public PageInfo pageRecord(Integer page,Integer rows,Record record) {
		Integer pageSize = (page /rows)+1;
		Integer count = recordService.countRecord();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String, Object>();
		pageInfo.setCondition(map);
		recordService.pageRecord(pageInfo, record);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	@RequestMapping("insertRecord")
	@ResponseBody
	//后台管理员操作记录表增加
	public int insertRecord(Record record) {
		int count =0;
		count = recordService.addModel(record);
		return count;
	}
	@RequestMapping("updateRecord")
	@ResponseBody
	//后台管理员操作记录表修改
	public int updateRecord(Record record) {
		int count = recordService.update(record);
		return count;
	}
	@RequestMapping("deleteRecord")
	@ResponseBody
	//后台管理员操作记录表删除
	public int deleteRecord(String ids) {
		int count =0;
		String[] idsStr = ids.split(",");
		for(int i=0;i<idsStr.length;i++) {
			String rdid = (String)idsStr[i];
			Record record = new Record();
			record.setRdid(Integer.valueOf(rdid));
			count = recordService.delete(record);
		}
		return count;
	}
}
