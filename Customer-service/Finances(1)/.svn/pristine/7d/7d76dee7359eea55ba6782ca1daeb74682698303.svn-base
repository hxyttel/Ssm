package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.SendMail;

/**
 * 操作人:汪栋才
 * 操作时间 :2017-12-25
 * 操作邮箱第三接口的mapper
 * */
public interface SendMailMapper  extends IBaseDao<Integer,SendMail>{
	SendMail findUserMail(Integer isuser);
	List<SendMail> selectPage(Pagination page,Map<String ,Object> params,@Param(value="sendMail")SendMail sendMail);
	abstract Integer SendMailcount();
	Integer updateSendMail();
}
