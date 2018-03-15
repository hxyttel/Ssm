package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Fabiao;

public interface FabiaoMapper extends IBaseDao<Integer, Fabiao>{

	//根据订单号查询
	Fabiao getByOrder(String order);
	
	//模糊查询
	List<Fabiao> listLike(Fabiao fa);
}
