package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Initiative;

public interface InitiativeMapper extends IBaseDao<Integer, Initiative>{

	//模糊查询
	List<Initiative> likeList(Initiative initiative);
}
