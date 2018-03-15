package com.p2p.service.front;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Sing;

public interface SingService extends IBaseService<Integer, Sing>{
	List<Sing> checkusersing(@Param("uid")String uid,@Param("day")String day);
}
