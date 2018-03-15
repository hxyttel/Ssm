package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.logging.log4j.core.pattern.AbstractStyleNameConverter.Red;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.Role;
import com.p2p.pojo.Userinfo;

public interface RedmoneyMapper extends IBaseDao<Integer, Redmoney>{
	//实现分页查询
			List<Redmoney> selectPage(Pagination page,Map<String ,Object> params);
			
			//查询总的记录数
			abstract Integer redmoneyCount();
			//查询所有的用户
			abstract List<Userinfo> seleRedmoneyList();
			
			List<Redmoney> selectByUserId(@Param("userid")Integer userid);
			
			//查询还没过期的并且没有使用的
			List<Redmoney> selectByNIU(@Param("uid")Integer uid);
			
			//查询已使用
			List<Redmoney> selectByUse(@Param("uid")Integer uid);
			
			//查询过期
			List<Redmoney> selectByOver(@Param("uid")Integer uid);
}
