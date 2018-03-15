package com.p2p.service.back;

import com.p2p.base.IBaseService;
import com.p2p.pojo.About;
import com.p2p.util.PageInfo;

public interface AboutService extends IBaseService<Integer, About>{
	abstract void selectPage(PageInfo pageInfo);//实现分页
	
	//查询总的记录数
	abstract Integer aboutCount();
}
