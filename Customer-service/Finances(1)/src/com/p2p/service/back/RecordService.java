package com.p2p.service.back;


import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Record;
import com.p2p.util.PageInfo;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-28
 * */
public interface RecordService extends IBaseService<Integer,Record>{
		//后台管理员操作记录表分页查询
		abstract void pageRecord(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="record") Record record);
		//后台管理员操作记录表总记录数查询
		abstract Integer countRecord();
}
