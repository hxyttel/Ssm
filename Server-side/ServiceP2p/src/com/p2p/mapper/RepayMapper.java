package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Repayment;

public interface RepayMapper extends IBaseDao<Integer, Repayment>{

	//根据订单号查询对象
	Repayment getByOrder(String order);
	//模糊查询
	List<Repayment> listLike(Repayment repayment);
}
