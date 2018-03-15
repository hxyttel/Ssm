package com.p2p.service.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Uservouch;
import com.p2p.util.PageInfo;

public interface UservouchService extends IBaseService<Integer, Uservouch>{
	//实现分页查询
	abstract void selectPage(PageInfo pageInfo);//实现分页
		
		//查询总的记录数
		abstract Integer UservouchyCount();
		
		
		//查询所有的用户
		abstract List<Userinfo> seleUservouchList();
		
		List<Uservouch> selectByUserId(@Param("userid")Integer userid);
		
		//查询还没过期的并且没有使用的
		List<Uservouch> selectByNIU(@Param("uvid")Integer uvid);
		
		//查询已使用
		List<Uservouch> selectByUse(@Param("uvid")Integer uvid);
		
		//查询过期
		List<Uservouch> selectByOver(@Param("uvid")Integer uvid);
}
