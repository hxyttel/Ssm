package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Userinfo;

/**
 * 操作人:汪栋才
 * 创建时间:2017-12-28
 * 操作用户基本信息的Mapper
 * */
public interface UserinfoMapper extends IBaseDao<Integer,Userinfo>{
	//根据uid去查询userinfo
	abstract Userinfo seleUserinfoByuid(Integer uid);
	//根据uiid去查询userinfo(只查询userinfo表)
	abstract Userinfo getUserinfoByuiid(Integer uiid);
	//根据邮箱获取用户基本信息
	abstract Userinfo selectByEmail(String uiemail);
}
