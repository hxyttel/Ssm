package com.p2p.service.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Loan;
import com.p2p.util.PageInfo;

/**
 * 借款Service接口
 * 
 * @author lxj
 * */
public interface LoanService extends IBaseService<Integer, Loan> {
	Loan getByemployname(String  ename);
	//实现分页查询
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="loan") Loan loan);//实现分页
	//查询总的记录数
	abstract Integer Loancount(@Param(value="loan") Loan loan);
	
	String getMaxStartTime();  //获取到最大的开始时间
	String getMinStartTime();  //获取到最小的开始时间
	
	List<String> getMoneyByTime(String time); //根据时间模糊查询  金额
	
	List<Loan> seleByLoan(Loan loan); //根据对象查询
}
