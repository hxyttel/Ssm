package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Noticetype;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-26
 * */
public interface NoticeTypeMapper extends IBaseDao<Integer,Noticetype>{
	//后台分页查询
		List<Noticetype> pageNoticeType(Pagination page,Map<String,Object> params,@Param(value="noticetype")Noticetype noticetype);
		//总记录数查询
		abstract Integer countNoticeType(); 
}
