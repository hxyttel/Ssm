package com.p2p.service.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Notice;
import com.p2p.util.PageInfo;

public interface NoticeService extends IBaseService<Integer, Notice>{
	//后台分页查询
	abstract void pageNotice(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="notice") Notice notice); 
	//后台总记录数查询
	abstract Integer countNotice();
	
	
}
