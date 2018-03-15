package com.p2p.service.back;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Moneyrecord;
import com.p2p.util.PageInfo;

/**
 * 操作人:杨嘉辉
 * 操作时间:2017-12-27
 * 后台资金明细的Service
 * */
public interface MoneyrecordServiece extends IBaseService<Integer, Moneyrecord >{
	
	//实现分页查询
	abstract void selectPage(PageInfo pageInfo,Moneyrecord cord);//实现分页
		
	//查询总的记录数
	abstract Integer moneyrecordCount();
	
	//根据uid去查询奖励金流水记录
  	abstract List<Moneyrecord> selectMoneyrecord(Integer uid);
  	
  //前台模糊查询
  	abstract List<Moneyrecord> seleMonreyReByTime(Moneyrecord moneyrecord);
}
