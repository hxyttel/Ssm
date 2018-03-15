package com.p2p.services;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Withdrawals;

public interface WithdrawalsService extends IBaseService<Integer, Withdrawals> {

	//模糊查询
		List<Withdrawals> listLike(Withdrawals withdrawals);
}
