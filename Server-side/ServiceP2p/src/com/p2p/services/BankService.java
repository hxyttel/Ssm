package com.p2p.services;


import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Bank;

public interface BankService extends IBaseService<Integer, Bank>{

	Bank selectBankCard(String card);
	//模糊查询
		List<Bank> listLike(Bank bank);
		//解绑
		void delbank(String bcode);
}
