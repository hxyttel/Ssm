package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.Redmoney;
import com.p2p.service.back.RedmoneyService;
import com.p2p.util.PageInfo;
/**
 * 关于后台红包操作的controller
 * 2017-12-25
 * 操作人:周俣帆
 * */
@Controller
@RequestMapping(value="/back/admin")
public class RedmoneyController {
		@Resource(name="redmoneyServiceImpl")
		private RedmoneyService redmoneyservice;
		
		@RequestMapping(value="selectRedmoneyList")
		@ResponseBody
		public PageInfo selectRedmoneyList(Integer page,Integer rows) {
			 Integer pageSize = (page /rows)+1;
			Integer count = redmoneyservice.redmoneyCount();
			PageInfo pageInfo = new PageInfo(pageSize,rows);
			Map<String,Object> map = new HashMap<String,Object>();
			pageInfo.setCondition(map);
			redmoneyservice.selectPage(pageInfo);
			pageInfo.setTotal(count);
			return pageInfo;
			
		}
		//实现新增
		@RequestMapping(value="insertRedmoney")
		@ResponseBody
		public int insertRedmoney(Redmoney redmoney){
			int count = redmoneyservice.addModel(redmoney);
			return count;
}
		
		//更新
		@RequestMapping(value="updateRedmoney")
		@ResponseBody
		public int updateRedmoney(Redmoney redmoney) {
			int  count = redmoneyservice.update(redmoney);
			return count;
			
		}
		//删除
		@RequestMapping(value ="deleteRedmoney")
		@ResponseBody
		public  int deleteRedmoney(String ids){ 
			int count = 0;
			String[] idStr = ids.split(",");
			for (int i = 0; i < idStr.length;i++) {
				String rid = (String) idStr[i];
				Redmoney redmoney = new Redmoney();
				redmoney.setRid(Integer.valueOf(rid));
				count =redmoneyservice.delete(redmoney);
			}
			return count;
		}
}