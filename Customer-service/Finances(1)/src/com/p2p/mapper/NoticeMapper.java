package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Notice;

/**
 * 操作人:吴光海
 * 创建时间:2017-12-25
 * */
public interface NoticeMapper extends IBaseDao<Integer,Notice>{
	//后台分页查询
	List<Notice> pageNotice(Pagination page,Map<String,Object> params,@Param(value="notice")Notice notic);
	//总记录数查询
	abstract Integer countNotice(); 
	//前台根据ID查询名字
	abstract List<Notice> selectName(Integer nid);
	
	abstract List<Notice> selectByType(@Param("ntype")String ntype);
}
