package com.p2p.controller.back;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Recharge;
import com.p2p.service.back.RechargesService;
import com.p2p.util.DateUtils;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value = "back/admin")
public class RechargesController {
	@Resource(name = "rechargesServiceImpl")
	private RechargesService rechargeService;

	@RequestMapping(value = "selectRechargeList")
	@ResponseBody
	public PageInfo selectRechargeList(Integer page, Integer rows,Recharge recharge,String uiname) {
		Integer pageSize = (page / rows) + 1;
		recharge.setUiname(uiname);
		// 得到总的页数
		SimpleDateFormat dateym = new SimpleDateFormat("yyyy-MM-dd");
		//string类型yyyy-MM-dd hh:mm:ss 转换成yyyy-MM-dd实现模糊查询
		if(recharge.getRetime()!=null && recharge.getRetime()!="") {
			Date dateend =DateUtils.ChuDate(recharge.getRetime());
			recharge.setRetime(dateym.format(dateend));
		}
		Integer count = rechargeService.rechargeCount(recharge);
		PageInfo pageInfo = new PageInfo(pageSize, rows);
		Map<String, Object> map = new HashMap<String, Object>();
		pageInfo.setCondition(map);
		rechargeService.selectPage(pageInfo,recharge);
		pageInfo.setTotal(count);
		return pageInfo;
	}
}
