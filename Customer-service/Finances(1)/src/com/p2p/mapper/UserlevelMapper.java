package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Userlevel;


public interface UserlevelMapper extends IBaseDao<Integer, Userlevel>{
	//实现分页查询
			List<Userlevel> selectPage(Pagination page,Map<String ,Object> params);
			
			//查询总的记录数
			abstract Integer UserlevelCount();
			
			//查询所有的用户
			abstract List<Userinfo> seleUserlevelList();
			
}
