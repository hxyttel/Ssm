package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Detail;

public interface DetailMapper extends IBaseDao<Integer, Detail>{

	Detail getDetail(Detail detail);
	//模糊查询
	List<Detail> listLike(Detail detail);
}
