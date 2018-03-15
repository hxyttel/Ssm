package com.p2p.service.front;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Setupnatice;

/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 前台用户通知设置的Service
 * */
public interface SetupnaticeService  extends IBaseService<Integer, Setupnatice>{
	List<Setupnatice> getUserSetup(Integer userid);
}
