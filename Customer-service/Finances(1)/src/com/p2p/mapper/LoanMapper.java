package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Loan;

/**
 * 借款
 * 
 * @author lxj
 * */
public interface LoanMapper extends IBaseDao<Integer,Loan>{
			Loan getByemployname(String ename);
			//实现分页查询
			List<Loan> selectPage(Pagination page,Map<String ,Object> params,@Param(value="loan") Loan loan);
			//查询总的记录数
			abstract Integer loancount(@Param(value="loan") Loan loan);
			
			String getMaxStartTime();  //获取到最大的开始时间
			String getMinStartTime();  //获取到最小的开始时间
			
			List<String> getMoneyByTime(String time); //根据时间模糊查询  金额
			
			List<Loan> seleByLoan(Loan loan); //根据对象查询
			
}
