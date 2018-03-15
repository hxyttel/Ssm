package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Withdrawals;

public interface WithdrawalsMapper extends IBaseDao<Integer, Withdrawals>{

	//模糊查询
	List<Withdrawals> listLike(Withdrawals withdrawals);
}
