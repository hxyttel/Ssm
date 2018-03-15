package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.ProfitMapper;
import com.p2p.pojo.Profit;
import com.p2p.services.ProfitService;

@Transactional
@Service
public class ProfitServiceImpl implements ProfitService {

	@Resource
	private ProfitMapper profitMapper;
	@Override
	public List<Profit> list() {
		// TODO Auto-generated method stub
		return profitMapper.list();
	}

	@Override
	public void add(Profit t) {
		// TODO Auto-generated method stub
		profitMapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		profitMapper.delete(id);
	}

	@Override
	public void update(Profit t) {
		// TODO Auto-generated method stub
		profitMapper.update(t);
	}

	@Override
	public Profit getById(Integer id) {
		// TODO Auto-generated method stub
		return profitMapper.getById(id);
	}

}
