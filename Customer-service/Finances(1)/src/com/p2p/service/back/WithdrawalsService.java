package com.p2p.service.back;

import java.io.Serializable;
import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Withdrawals;
import com.p2p.util.PageInfo;

public interface WithdrawalsService extends IBaseService<Integer, Withdrawals>{
	//实现分页查询
		abstract void selectPage(PageInfo pageInfo);//实现分页
		
		
		//查询总的记录数
		abstract Integer withdrawalsCount();
		
		//查询所有的用户
		abstract List<Userinfo> seleWithdrawalsList();
}
