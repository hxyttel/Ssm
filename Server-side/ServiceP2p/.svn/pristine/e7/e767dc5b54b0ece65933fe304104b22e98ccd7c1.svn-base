package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.AdminMapper;
import com.p2p.pojo.Admin;
import com.p2p.services.AdminService;

@Transactional
@Service
public class AdminServiceImpl implements AdminService{

	@Resource
	private AdminMapper adminmapper;
	
	@Override
	public List<Admin> list() {
		// TODO Auto-generated method stub
		return adminmapper.list();
	}

	@Override
	public void add(Admin t) {
		// TODO Auto-generated method stub
		adminmapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		adminmapper.delete(id);
	}

	@Override
	public void update(Admin t) {
		// TODO Auto-generated method stub
		adminmapper.update(t);
	}

	@Override
	public Admin getById(Integer id) {
		// TODO Auto-generated method stub
		return adminmapper.getById(id);
	}

	@Override
	public Admin login(String phone) {
		// TODO Auto-generated method stub
		return adminmapper.login(phone);
	}

}
