package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Loan;
import com.p2p.pojo.SendMail;
import com.p2p.util.PageInfo;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 操作邮箱第三接口的Service
 * */
public interface SendMailService extends IBaseService<Integer, SendMail>{
	SendMail findUserMail(Integer isuser);
	//实现分页查询
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="sendMail") SendMail sendMail);//实现分页
	abstract Integer SendMailcount();
	Integer updateSendMail();
}
