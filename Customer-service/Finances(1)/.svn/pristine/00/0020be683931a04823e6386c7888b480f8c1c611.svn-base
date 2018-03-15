package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.Vipdetail;
import com.p2p.service.back.VipdetailService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="back/admin")
public class VipdetailController {
	@Resource(name="vipdetailServiceImpl")
	private VipdetailService vipdetailService;
	
	@RequestMapping(value="selectVipdetailList")
	@ResponseBody
	public PageInfo  selectVipdetailList(Integer page, Integer rows) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
		Integer pageSize = (page /rows)+1;
		//得到总的页数
		Integer count = vipdetailService.vipdetailCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);

		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		vipdetailService.selectPage(pageInfo);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	//增加
	@RequestMapping(value="insertVipdetail")
	@ResponseBody
	public int insertVipdetail(Vipdetail vipdetail,HttpServletRequest request,MultipartFile[] upfile) throws Exception {
		int count = vipdetailService.addModel(vipdetail);
		return count;
	}
	//删除
	@RequestMapping(value ="deleteVipdetail")
	@ResponseBody
	public  int deleteVipdetail(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String vdid = (String) idStr[i];
			Vipdetail vipdetail = new Vipdetail();
			vipdetail.setVdid(Integer.valueOf(vdid));
			count =vipdetailService.delete(vipdetail);
		}
		return count;
	}
	//修改
		@RequestMapping(value = "updateVipdetail")
		@ResponseBody
		public  int updateVipdetail(Vipdetail vipdetail,HttpServletRequest request,MultipartFile[] upfile){  
			int count = vipdetailService.update(vipdetail);
			return count;
		}
}
