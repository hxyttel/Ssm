package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.MoneyDetail;
import com.p2p.pojo.Moneyrecord;


public interface MoneyDetailMapper extends IBaseDao<Integer,MoneyDetail>{
	MoneyDetail findUserMsg(Integer isuser);
	//实现分页查询
	List<MoneyDetail> selectPage(Pagination page,Map<String ,Object> params,@Param(value="moneyDetail") MoneyDetail moneyDetail);
	
	//查询总的记录数
	abstract Integer moneyDetailCount();
	abstract List<MoneyDetail> selectMoney(@Param("uid")Integer uid);
	//前台模糊查询
  	abstract List<MoneyDetail> seleMonreyReByTime(MoneyDetail moneydetail);

}
