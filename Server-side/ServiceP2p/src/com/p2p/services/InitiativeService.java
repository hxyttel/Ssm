package com.p2p.services;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Initiative;

public interface InitiativeService extends IBaseService<Integer, Initiative> {

	//模糊查询
		List<Initiative> likeList(Initiative initiative);
}
