package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Employe;
import com.p2p.pojo.Recharge;
import com.p2p.pojo.Userinfo;

public interface RechargeMapper extends IBaseDao<Integer, Recharge>{
	//查询交易密码是否正确
	abstract Userinfo getUserinfo(Userinfo userinfo);
	//实现分页查询
		List<Recharge> selectPage(Pagination page,Map<String ,Object> params,@Param(value="recharge") Recharge recharge);
		
		//查询总的记录数
		abstract Integer rechargeCount(@Param(value="recharge") Recharge recharge);
}
