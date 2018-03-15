package com.p2p.services;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Admin;

public interface AdminService extends IBaseService<Integer, Admin>{

	Admin login(String admin);
}
