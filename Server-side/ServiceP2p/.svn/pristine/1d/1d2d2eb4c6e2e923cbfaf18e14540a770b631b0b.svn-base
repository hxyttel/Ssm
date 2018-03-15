package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.InitiativeMapper;
import com.p2p.pojo.Initiative;
import com.p2p.services.InitiativeService;

@Transactional
@Service
public class InitiativeServiceImpl implements InitiativeService {

	@Resource
	private InitiativeMapper iMapper;
	@Override
	public List<Initiative> list() {
		// TODO Auto-generated method stub
		return iMapper.list();
	}

	@Override
	public void add(Initiative t) {
		// TODO Auto-generated method stub
		iMapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		iMapper.delete(id);
	}

	@Override
	public void update(Initiative t) {
		// TODO Auto-generated method stub
		iMapper.update(t);
	}

	@Override
	public Initiative getById(Integer id) {
		// TODO Auto-generated method stub
		return iMapper.getById(id);
	}

	@Override
	public List<Initiative> likeList(Initiative initiative) {
		// TODO Auto-generated method stub
		return iMapper.likeList(initiative);
	}

}
