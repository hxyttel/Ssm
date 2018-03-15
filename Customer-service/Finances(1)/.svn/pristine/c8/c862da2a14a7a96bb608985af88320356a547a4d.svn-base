package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Userbackcard;
import com.p2p.pojo.Withdrawals;
import com.p2p.service.back.WithdrawalsService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.UserbackcardService;
import com.p2p.util.PageInfo;


@Controller
@RequestMapping(value="/back/admin")
public class WithdrawalsController {
	@Resource(name="withdrawalsServiceImpl")
	private WithdrawalsService withdrawalsService;
	@Resource(name="userbackcardServiceImpl")
	private UserbackcardService userBankcardService;
	@Resource(name="IUserServiceImpl")
	private IUserService userService;
	
	@RequestMapping(value="selectWithdrawalsList")
	@ResponseBody
	public PageInfo selectWithdrawalsList(Integer page,Integer rows) {
		 Integer pageSize = (page /rows)+1;
		Integer count = withdrawalsService.withdrawalsCount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		withdrawalsService.selectPage(pageInfo);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	@RequestMapping("updateWithdrawals")
	@ResponseBody
	public int updateWithdrawals(Withdrawals withdrawals) {
		int count = withdrawalsService.update(withdrawals);
		return count;
	}
		
	
	//删除
	@RequestMapping(value ="deleteWithdrawals")
	@ResponseBody
	public  int deleteWithdrawals(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String wid = (String) idStr[i];
			Withdrawals withdrawals = new Withdrawals();
			withdrawals.setWid(Integer.valueOf(wid));
			count =withdrawalsService.delete(withdrawals);
		}
		return count;
	}
}
