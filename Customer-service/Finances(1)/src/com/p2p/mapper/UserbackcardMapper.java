package com.p2p.mapper;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Userbackcard;

/**
 * 银行卡mapper接口
 * 
 * @author lxj
 * */
public interface UserbackcardMapper extends IBaseDao<Integer, Userbackcard> {
	abstract Userbackcard seleBybanknum(Userbackcard userbackcard);
	//根据银行卡号查找判断是否存在
	Userbackcard selectBackcard(Userbackcard str);
	//根据银行卡号修改余额
	void updatenum(Userbackcard userbackcard);
}
