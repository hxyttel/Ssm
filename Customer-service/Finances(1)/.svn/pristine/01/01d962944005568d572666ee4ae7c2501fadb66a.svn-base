package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Role;
import com.p2p.pojo.SendMsg;
import com.p2p.util.PageInfo;

/**
 * 操作人:汪栋才
 * 操作时间 :2017-12-25
 * 操作短信第三接口的Service
 * */
public interface SendMsgService  extends IBaseService<Integer,SendMsg>{
	SendMsg findUserMsg(Integer isuser);
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="sendMsg") SendMsg sendMsg);//实现分页
	//查询总的记录数
	abstract Integer sendMsgCount(@Param(value="sendMsg") SendMsg sendmsg);
	
	int updateIsUser();
}
