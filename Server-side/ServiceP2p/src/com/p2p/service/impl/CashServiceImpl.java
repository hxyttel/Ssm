package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.CashMapper;
import com.p2p.pojo.Cash;
import com.p2p.services.CashService;

@Transactional
@Service
public class CashServiceImpl implements CashService{
	
	@Resource
	private CashMapper cashmapp;
	
	@Override
	public List<Cash> list() {
		return cashmapp.list();
	}

	@Override
	public void add(Cash t) {
		cashmapp.add(t);
	}

	@Override
	public void delete(Integer id) {
		cashmapp.delete(id);
	}

	@Override
	public void update(Cash t) {
		cashmapp.update(t);
	}

	@Override
	public Cash getById(Integer id) {
		return cashmapp.getById(id);
	}

}
