package com.p2p.service.front;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Userbackcard;

/**
 * 银行卡service接口
 * 
 * @author  lxj
 * */
public interface UserbackcardService extends IBaseService<Integer, Userbackcard> {
	abstract Userbackcard seleBybanknum(Userbackcard userbackcard);
	//根据银行卡号查找判断是否存在
		Userbackcard selectBackcard(Userbackcard str);
	//根据银行卡号修改余额
		abstract void updatenum(Userbackcard userbackcard);
}
