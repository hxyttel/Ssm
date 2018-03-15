package com.p2p.controller.back;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Loan;
import com.p2p.service.back.LoanService;
import com.p2p.util.DateUtils;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="/back/admin")
public class LoanController {
	@Resource(name="loanServiceImpl")
	private LoanService loanService;
	
	@RequestMapping(value="selectloanList")
	@ResponseBody
	public PageInfo selectloanList(Integer page, Integer rows,Loan loan) {
		Integer pageSize = (page /rows)+1;
		SimpleDateFormat dateym = new SimpleDateFormat("yyyy-MM-dd");
		//string类型yyyy-MM-dd hh:mm:ss 转换成yyyy-MM-dd实现模糊查询
		if(loan.getLendtime()!=null && loan.getLendtime()!="") {
			Date dateend =DateUtils.ChuDate(loan.getLendtime());
			loan.setLendtime(dateym.format(dateend));
		}
		if(loan.getLtime()!=null && loan.getLtime()!="") {
			Date dateltime = DateUtils.ChuDate(loan.getLtime());
			loan.setLtime(dateym.format(dateltime));
		}
		
		Integer count = loanService.Loancount(loan);
		//得到总的页数
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		loanService.selectPage(pageInfo, loan);
		pageInfo.setTotal(count);
		return pageInfo;
	}
}
