package com.p2p.services;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Recharge;

public interface RechargeService extends IBaseService<Integer, Recharge>{

	//模糊查询
		List<Recharge> listLike(Recharge recharge);
}
