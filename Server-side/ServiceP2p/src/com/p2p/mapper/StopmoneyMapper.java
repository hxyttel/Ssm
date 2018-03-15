package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Stopmoney;

public interface StopmoneyMapper extends IBaseDao<Integer, Stopmoney> {

	//根据订单号查询
	Stopmoney getOrder(String order);
	//模糊查询
	List<Stopmoney> likeStopmoney(Stopmoney stopmoney);
}
