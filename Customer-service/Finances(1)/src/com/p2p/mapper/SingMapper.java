package com.p2p.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Sing;
/**
 * 操作人:汪栋才
 * 操作时间2018-1-17
 * 操作用户等级和签到的Mapper
 * */
public interface SingMapper  extends IBaseDao<Integer,Sing>{
	List<Sing> checkusersing(@Param("uid")String uid,@Param("day")String day);
}
