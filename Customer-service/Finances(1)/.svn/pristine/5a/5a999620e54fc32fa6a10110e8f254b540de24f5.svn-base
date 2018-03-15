package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.About;

public interface AboutMapper extends IBaseDao<Integer, About>{
	//实现分页查询
	List<About> selectPage(Pagination page,Map<String ,Object> params);
	
	//查询总的记录数
	abstract Integer aboutCount();
}
