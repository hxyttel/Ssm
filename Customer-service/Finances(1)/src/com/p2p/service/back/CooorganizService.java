package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Cooorganiz;
import com.p2p.util.PageInfo;
/**
 * 操作人:李钟辉
 * 操作时间:2017-12-22
 * 合作机构的Service
 * */
public interface CooorganizService extends IBaseService<Integer, Cooorganiz>{
		
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="cooorganiz") Cooorganiz cooorganiz);//实现分页
	
	abstract Integer cooorganizCount();
}
