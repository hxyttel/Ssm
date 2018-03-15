package com.p2p.mapper;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Admin;

public interface AdminMapper extends IBaseDao<Integer, Admin>{

	Admin login(String phone);
}
