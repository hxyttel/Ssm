package com.p2p.service.back;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseService;
import com.p2p.pojo.Contact;
import com.p2p.pojo.Repayment;
import com.p2p.util.PageInfo;

public interface RepaymentbackService extends IBaseService<Integer, Repayment> {
	//实现分页查询
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="repayment") Repayment repayment);//实现分页
	//查询总的记录数
	abstract Integer repaymentcount();
	abstract Integer updateRepayment();
}