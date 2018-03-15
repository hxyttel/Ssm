package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.UserBindCardMapper;
import com.p2p.pojo.UserBindCard;
import com.p2p.services.UserBindCardService;

@Transactional
@Service
public class UserBindCardServiceImpl implements UserBindCardService{
	
	@Resource
	private UserBindCardMapper ubcmapper;
	
	@Override
	public List<UserBindCard> list() {
		return ubcmapper.list();
	}

	@Override
	public void add(UserBindCard t) {
		ubcmapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		ubcmapper.delete(id);
	}

	@Override
	public void update(UserBindCard t) {
		ubcmapper.update(t);
	}

	@Override
	public UserBindCard getById(Integer id) {
		return ubcmapper.getById(id);
	}

}
