package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.DetailMapper;
import com.p2p.pojo.Detail;
import com.p2p.services.DetailService;

@Transactional
@Service
public class DetailServiceImpl implements DetailService{

	
	@Resource
	private DetailMapper detailmapper;
	
	@Override
	public List<Detail> list() {
		// TODO Auto-generated method stub
		return detailmapper.list();
	}

	@Override
	public void add(Detail t) {
		// TODO Auto-generated method stub
		detailmapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		detailmapper.delete(id);
	}

	@Override
	public void update(Detail t) {
		// TODO Auto-generated method stub
		detailmapper.update(t);
	}

	@Override
	public Detail getById(Integer id) {
		// TODO Auto-generated method stub
		return detailmapper.getById(id);
	}

	@Override
	public Detail getDetail(Detail detail) {
		// TODO Auto-generated method stub
		return detailmapper.getDetail(detail);
	}

	@Override
	public List<Detail> listLike(Detail detail) {
		// TODO Auto-generated method stub
		return detailmapper.listLike(detail);
	}

}
