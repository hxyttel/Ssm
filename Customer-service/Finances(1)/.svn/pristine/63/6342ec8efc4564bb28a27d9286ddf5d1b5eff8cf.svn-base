package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Record;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-28
 * */
public interface RecordMapper extends IBaseDao<Integer, Record>{
		//后台管理员操作记录表分页查询
		List<Record> pageRecord(Pagination page,Map<String,Object> params,@Param(value="record")Record record);
		//后台管理员操作记录表总记录数查询
		abstract Integer countRecord();
}
