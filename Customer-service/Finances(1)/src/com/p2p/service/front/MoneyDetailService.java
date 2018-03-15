package com.p2p.service.front;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.MoneyDetail;
import com.p2p.pojo.Moneyrecord;
import com.p2p.util.PageInfo;


public interface MoneyDetailService extends IBaseDao<Integer,MoneyDetail>{
	MoneyDetail findUserMsg(Integer isuser);
	//实现分页查询
		abstract void selectPage(PageInfo pageInfo,@Param(value="moneyDetail") MoneyDetail moneyDetail);//实现分页
			
		//查询总的记录数
		abstract Integer moneyDetailCount();
		abstract List<MoneyDetail> selectMoney(@Param("uid")Integer uid);
		 //前台模糊查询
	  	abstract List<MoneyDetail> seleMonreyReByTime(MoneyDetail moneydetail);
}
