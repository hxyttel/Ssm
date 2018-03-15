package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Contact;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Role;
/**
 * 关于后台联系人相关操作的mappper
 * 2017-11-18
 * 操作人:曾林
 * */
public interface ContactMapper extends IBaseDao<Integer,Contact>{
	//实现分页查询
		List<Contact> selectPage(Pagination page,Map<String ,Object> params,@Param(value="contact") Contact contact);
		//查询总的记录数
		abstract Integer contactcount();
		Integer cxslist(String cxs);
		Integer updateContact();
}
