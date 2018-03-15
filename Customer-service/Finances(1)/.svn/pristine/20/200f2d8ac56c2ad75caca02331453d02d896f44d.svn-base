package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * 还款Mapper
 * 操作人：邱雪云
 * 操作时间：2018-01-17
 * */

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Repayment;

public interface RepaymentMapper extends IBaseDao<Integer, Repayment> {
	//实现分页查询
			List<Repayment> selectPage(Pagination page,Map<String ,Object> params,@Param(value="repayment") Repayment repayment);
			//查询总的记录数
			abstract Integer repaymentcount();
			Integer updateRepayment();
	abstract List<Repayment> selectMoney(@Param("uid")Integer uid);
	abstract Integer repaymentCount();
}
