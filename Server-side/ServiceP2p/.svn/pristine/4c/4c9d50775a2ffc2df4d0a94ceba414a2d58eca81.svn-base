package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Bank;

public interface BankMapper extends IBaseDao<Integer, Bank>{

	Bank selectBankCard(String card);
	//模糊查询
	List<Bank> listLike(Bank bank);
	//解绑
	void delbank(String bcode);
}
