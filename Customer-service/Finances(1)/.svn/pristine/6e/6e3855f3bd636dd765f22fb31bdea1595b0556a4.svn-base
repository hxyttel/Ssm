package com.p2p.service.front;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Notice;
/**
 * 操作人:吴光海
 * 创建时间:2017-01-12
 * */
public interface NoticeFontSrvice extends IBaseService<Integer, Notice>{
	//前台根据ID查询名字
	abstract List<Notice> selectName(Integer nid);
	abstract List<Notice> selectByType(@Param("ntype")String ntype);
}
