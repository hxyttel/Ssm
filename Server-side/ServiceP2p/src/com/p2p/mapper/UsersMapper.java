package com.p2p.mapper;

import java.util.List;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Users;

public interface UsersMapper extends IBaseDao<Integer, Users>{

	//模糊查询
	List<Users> listLike(Users user);
}
