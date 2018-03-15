package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Repayment;
import com.p2p.service.back.RepaymentbackService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="/back/admin")
public class RepaymentbackController {
	@Resource(name="repaymentbackServiceImpl")
	private RepaymentbackService repaymentbackService;
	
	@RequestMapping(value="selectRepaymentlist")
	@ResponseBody
	public PageInfo  selectRepaymentlist(Integer page, Integer rows,Repayment repayment) {
		Integer pageSize = (page /rows)+1;
		Integer count = repaymentbackService.repaymentcount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		repaymentbackService.selectPage(pageInfo,repayment);
		pageInfo.setTotal(pageInfo.getTotal());
		return pageInfo;
	}
}
