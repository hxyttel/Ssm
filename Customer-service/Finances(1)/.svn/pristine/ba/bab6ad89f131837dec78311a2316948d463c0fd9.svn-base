package com.p2p.mapper;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Role;
/**
 * 操作人:汪栋才
 * 创建时间:2017-12-28
 * 操作轮播图的Mapper
 * */
public interface IndexpicMapper extends IBaseDao<Integer, Indexpic>{
	//实现分页查询
		List<Indexpic> selectPage(Pagination page,Map<String ,Object> params);
		
		//查询总的记录数
		abstract Integer indexCount();
}
