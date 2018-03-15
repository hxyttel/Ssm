package com.p2p.service.back;

import java.io.Serializable;
import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Indexpic;
import com.p2p.util.PageInfo;

public interface IndexpicService extends IBaseService<Integer, Indexpic>{
	//实现分页查询
	abstract void selectPage(PageInfo pageInfo);//实现分页
		
	//查询总的记录数
	abstract Integer indexCount();
}
