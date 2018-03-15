package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Setupnatice;

/**
 * 操作人:汪栋才
 * 操作时间 :2017-12-25
 * 操作用户通知设置的mapper
 * */
public interface SetupnaticeMapper  extends IBaseDao<Integer,Setupnatice>{
	List<Setupnatice> getUserSetup(Integer userid);
}
