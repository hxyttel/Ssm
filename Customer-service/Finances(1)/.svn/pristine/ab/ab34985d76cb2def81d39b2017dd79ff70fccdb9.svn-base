package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Cooorganiz;
/**
 * 操作人:李钟辉
 * 操作时间:2017-12-22
 * 合作机构的Mapper
 * */
public interface CooorganizMapper extends IBaseDao<Integer,Cooorganiz>{
List<Cooorganiz> selectPage(Pagination page,Map<String ,Object> params,@Param(value="cooorganiz") Cooorganiz cooorganiz);
	
	//查询总的记录数
	abstract Integer cooorganizCount();
}
