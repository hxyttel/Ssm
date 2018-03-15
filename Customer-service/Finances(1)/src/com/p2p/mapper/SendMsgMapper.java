package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;

import com.p2p.pojo.SendMsg;

/**
 * 操作人:汪栋才
 * 操作时间 :2017-12-25
 * 操作短信第三接口的mapper
 * */
public interface SendMsgMapper extends IBaseDao<Integer,SendMsg>{
	SendMsg findUserMsg(Integer isuser);
	//实现分页查询
	List<SendMsg> selectPage(Pagination page,Map<String ,Object> params,@Param(value="sendMsg") SendMsg sendmsg);
	//查询总的记录数
	abstract Integer sendMsgCount(@Param(value="sendMsg")SendMsg sendmsg);
	
	int updateIsUser();
}
