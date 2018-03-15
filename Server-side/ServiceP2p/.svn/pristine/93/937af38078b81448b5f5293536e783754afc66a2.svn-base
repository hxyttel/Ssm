package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.UsersMapper;
import com.p2p.pojo.Users;
import com.p2p.services.UsersService;

@Transactional
@Service
public class UsersServiceImpl implements UsersService{

	@Resource
	private UsersMapper usermapper;
	
	@Override
	public List<Users> list() {
		// TODO Auto-generated method stub
		return usermapper.list();
	}

	@Override
	public void add(Users t) {
		// TODO Auto-generated method stub
		usermapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		usermapper.delete(id);
	}

	@Override
	public void update(Users t) {
		// TODO Auto-generated method stub
		usermapper.update(t);
	}

	@Override
	public Users getById(Integer id) {
		// TODO Auto-generated method stub
		return usermapper.getById(id);
	}

	@Override
	public List<Users> listLike(Users user) {
		// TODO Auto-generated method stub
		return usermapper.listLike(user);
	}

	

}
