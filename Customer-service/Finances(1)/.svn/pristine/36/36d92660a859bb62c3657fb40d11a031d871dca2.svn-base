package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.IdCard;

/**
 * 身份证mapper接口
 * 
 * @author lxj
 * */
public interface IdCardMapper extends IBaseDao<Integer, IdCard> {
	//实现后台分页查询
	List<IdCard> selectPage(Pagination page,Map<String ,Object> params,@Param(value="idcard") IdCard idcard);
	
	//查询所有的记录数(含模糊查询的总数)
	abstract Integer allConuntIdcard(@Param(value="idcard") IdCard idcard);
}
