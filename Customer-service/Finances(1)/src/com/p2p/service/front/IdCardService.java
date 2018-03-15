package com.p2p.service.front;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.IdCard;
import com.p2p.pojo.Role;
import com.p2p.util.PageInfo;

/**
 * 身份证servie接口
 * 
 * @author lxj
 * */
public interface IdCardService extends IBaseService<Integer, IdCard> {
	//后台实现分页查询
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="idcard") IdCard idcard);//实现分页
	
	//查询所有的记录数(含模糊查询的总数)
	abstract Integer allConuntIdcard(@Param(value="idcard") IdCard idcard);
}
