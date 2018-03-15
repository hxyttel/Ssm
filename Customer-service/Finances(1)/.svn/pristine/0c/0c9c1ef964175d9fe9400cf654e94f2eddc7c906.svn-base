package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Userlevel;
import com.p2p.service.back.UserlevelService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="/back/admin")
public class UserlevelController {
	@Resource(name="userlevelServiceImpl")
	private UserlevelService userlevelservice;
	
	@RequestMapping(value="selectUserlevelList")
	@ResponseBody
	public PageInfo selectUserlevelList(Integer page,Integer rows) {
		 Integer pageSize = (page /rows)+1;
		Integer count = userlevelservice.UserlevelCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		userlevelservice.selectPage(pageInfo);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	//实现新增
			@RequestMapping(value="insertUserlevel")
			@ResponseBody
			public int insertWithdrawals(Userlevel userlevel) {
				int count = userlevelservice.addModel(userlevel);
				return count;
			}
			
			//修改角色信息
			@RequestMapping(value = "updateUserlevel")
			@ResponseBody
			public  int updateUserlevel(Userlevel userlevel){  
				int count = userlevelservice.update(userlevel);
				return count;
			}
			//删除
			@RequestMapping(value ="deleteUserlevel")
			@ResponseBody
			public  int deleteUserlevel(String ids){ 
				int count = 0;
				String[] idStr = ids.split(",");
				for (int i = 0; i < idStr.length;i++) {
					String ulid = (String) idStr[i];
					Userlevel userlevel= new Userlevel();
					userlevel.setUlid(Integer.valueOf(ulid));
					count =userlevelservice.delete(userlevel);
				}
				return count;
			}

}
