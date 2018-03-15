package com.p2p.service.front;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Profit;

public interface ProfitService extends IBaseService<Integer, Profit>{
	//模糊查询
		abstract List<Profit> seleByProfit(Profit profit); 
	//查找最近的一天时间
		abstract String seleProfitBytimeMax();
	//查找最远的一天时间	
		abstract String seleProfitBytimemin();
		
}
