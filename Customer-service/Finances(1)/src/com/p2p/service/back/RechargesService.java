package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Recharge;
import com.p2p.util.PageInfo;

public interface RechargesService  extends IBaseService<Integer, Recharge>{
abstract void selectPage(PageInfo pageInfo,@Param(value="recharge") Recharge recharge);//实现分页
	
	//查询总的记录数
	abstract Integer rechargeCount(@Param(value="recharge") Recharge recharge);
}
