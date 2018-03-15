package com.p2p.controller.back;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Moneyrecord;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.util.DateUtils;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping("/money")
public class MoneyrecordController {
	
	@Resource(name="moneyrecordServiceImpl")
	private MoneyrecordServiece moneyrecordServiece;
	
	//实现分页查询
		@RequestMapping("/selectrecords")
		@ResponseBody
		public PageInfo  selectMoneyrecordList(Integer page, Integer rows,Moneyrecord moneyrecord) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
			PageInfo pageInfo = new PageInfo(page+1,rows);
			//得到总的页数
			Integer count = moneyrecordServiece.moneyrecordCount();
			Map<String,Object> map = new HashMap<String,Object>();
			pageInfo.setCondition(map);
			moneyrecordServiece.selectPage(pageInfo,moneyrecord);
			pageInfo.setTotal(count);
 			return pageInfo;
		}
		
		//实现新增
		@RequestMapping(value="insertmoneyrecord")
		@ResponseBody
		public int insertMoneyrecord(Moneyrecord cord) {
			int count = moneyrecordServiece.addModel(cord);
			return count;
		}
		
		//修改角色信息
		@RequestMapping(value = "updateMoneyrecord")
		@ResponseBody
		public  int updateMoneyrecord(Moneyrecord cord){  
			int count = moneyrecordServiece.update(cord);
			return count;
		}
		
		//删除
		@RequestMapping(value ="deleteMoneyrecord")
		@ResponseBody
		public  int delMoneyrecord(String ids){ 
			int count = 0;
			String[] idStr = ids.split(",");
			for (int i = 0; i < idStr.length;i++) {
				String mrid = (String) idStr[i];
				Moneyrecord cord = new Moneyrecord();
				cord.setMrid(Integer.valueOf(mrid));
				count =moneyrecordServiece.delete(cord);
			}
			return count;
		}
		
		//前台模糊查询
		@RequestMapping(value="toSeleByMoneyRecord")
		@ResponseBody
		public String toSeleByMoneyRecord(Integer uid,Integer mrstatus,HttpSession session) throws JsonProcessingException {
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			Moneyrecord  moneyrecord =new Moneyrecord();
			List<Moneyrecord> moneyrecordList =new ArrayList<Moneyrecord>();
			Double allMoneyCode = 0.0;
			if(mrstatus==0) {
				moneyrecordList = moneyrecordServiece.selectMoneyrecord(uid);
				for (int i = 0; i < moneyrecordList.size(); i++) {
					allMoneyCode+=moneyrecordList.get(i).getMrwastemoney();
				}
			}
			else if(mrstatus==7) {
				moneyrecord.setMrwasttime((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),7))));
				moneyrecord.setMrendtime(DateUtils.getDateFormat(new Date()));
				moneyrecord.setUid(uid);
				moneyrecordList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
				for (int i = 0; i < moneyrecordList.size(); i++) {
					allMoneyCode+=moneyrecordList.get(i).getMrwastemoney();
				}
				
			}else if(mrstatus==30) {
				moneyrecord.setMrwasttime((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),30))));
				moneyrecord.setMrendtime(DateUtils.getDateFormat(new Date()));
				moneyrecord.setUid(uid);
				moneyrecordList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
				for (int i = 0; i < moneyrecordList.size(); i++) {
					allMoneyCode+=moneyrecordList.get(i).getMrwastemoney();
				}
				
			}else if(mrstatus==90) {
				moneyrecord.setMrwasttime((DateUtils.getDateFormat(DateUtils.getDayBefore(new Date(),90))));
				moneyrecord.setMrendtime(DateUtils.getDateFormat(new Date()));
				moneyrecord.setUid(uid);
				moneyrecordList = moneyrecordServiece.seleMonreyReByTime(moneyrecord);
				for (int i = 0; i < moneyrecordList.size(); i++) {
					allMoneyCode+=moneyrecordList.get(i).getMrwastemoney();
				}
				
			}
			map.put("data", moneyrecordList);
			String obj = mapper.writeValueAsString(map);
			/*session.setAttribute("listMoney",moneyrecordList);*/
			session.setAttribute("allMoneyCode",allMoneyCode);
			return obj;
		}
		
	
		
}
