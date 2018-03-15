package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Noticetype;
import com.p2p.util.PageInfo;

public interface NoticeTypeService extends IBaseService<Integer,Noticetype>{
		//后台分页查询
		abstract void pageNoticeType(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="noticetype") Noticetype noticetype); 
		//后台总记录数查询
		abstract Integer countNoticeType();
}
