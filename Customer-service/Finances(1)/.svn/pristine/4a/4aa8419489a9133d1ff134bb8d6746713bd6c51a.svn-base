package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Activity;
import com.p2p.util.PageInfo;

public interface ActivityBackService extends IBaseService<Integer, Activity>{
	//后台分页查询
	abstract void pageActivity(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="activity") Activity activity);
	//后台总记录数查询
	abstract Integer countActivity();
}
