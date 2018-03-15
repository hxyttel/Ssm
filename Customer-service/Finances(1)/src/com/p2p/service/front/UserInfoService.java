package com.p2p.service.front;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.User;
import com.p2p.pojo.Userinfo;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 前台用户信息的Service
 * */
public interface UserInfoService extends IBaseService<Integer, Userinfo>{
	//根据uid去查询userinfo
	abstract Userinfo seleUserinfoByuid(Integer uid);
	//根据uiid去查询userinfo(只查询userinfo表)
	abstract Userinfo getUserinfoByuiid(Integer uiid);
	//根据邮箱获取用户基本信息
	abstract Userinfo selectByEmail(String uiemail);
}
