package com.p2p.mapper;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Withdrawals;


public interface WithdrawalsMapper extends IBaseDao<Integer, Withdrawals>{
	//实现分页查询
		List<Withdrawals> selectPage(Pagination page,Map<String ,Object> params);
		
		//查询总的记录数
		abstract Integer withdrawalsCount();
		
		//查询所有的用户
		abstract List<Userinfo> seleWithdrawalsList();
}
