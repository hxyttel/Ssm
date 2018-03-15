package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Fabiao;
import com.p2p.util.PageInfo;

public interface FabiaobackService extends IBaseService<Integer, Fabiao>{

	//实现分页查询
    abstract void selectPageFabiao(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="fabiao") Fabiao fabiao);//实现分页
 	
    //实现审核标分页查询
    abstract void selectFabiao(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="fabiao") Fabiao fabiao);//实现分页
    
 	//查询总的记录数
 	abstract Integer fabiaoCount();
}
