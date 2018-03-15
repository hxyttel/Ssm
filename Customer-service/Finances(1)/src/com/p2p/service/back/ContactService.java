package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Contact;
import com.p2p.pojo.Role;
import com.p2p.util.PageInfo;

public interface ContactService extends IBaseService<Integer,Contact>{
		//实现分页查询
		abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="contact") Contact contact);//实现分页
		//查询总的记录数
		abstract Integer Contactcount();
		abstract void cxslist(Integer cxs);
		abstract Integer updateContact();
}
