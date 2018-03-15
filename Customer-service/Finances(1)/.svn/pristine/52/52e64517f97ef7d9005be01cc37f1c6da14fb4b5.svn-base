package com.p2p.service.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.Userinfo;
import com.p2p.util.PageInfo;

public interface RedmoneyService extends IBaseService<Integer,Redmoney>{
	//实现分页查询
		abstract void selectPage(PageInfo pageInfo);//实现分页
			
		//查询总的记录数
		abstract Integer redmoneyCount();
		//查询所有的用户
		abstract List<Userinfo> selectRedmoneyList();
		
		List<Redmoney> selectByUserId(@Param("userid")Integer userid);
		
		//查询还没过期的并且没有使用的
		List<Redmoney> selectByNIU(@Param("uid")Integer uid);
		
		//查询已使用
		List<Redmoney> selectByUse(@Param("uid")Integer uid);
		
		//查询过期
		List<Redmoney> selectByOver(@Param("uid")Integer uid);
}
