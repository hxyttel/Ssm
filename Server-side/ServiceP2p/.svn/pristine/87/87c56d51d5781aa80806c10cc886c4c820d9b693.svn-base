package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.StopmoneyMapper;
import com.p2p.pojo.Stopmoney;
import com.p2p.services.StopmoneyService;

@Transactional
@Service
public class StopmoneyServiceImpl implements StopmoneyService{

	@Resource
	private StopmoneyMapper stopmoney;
	@Override
	public List<Stopmoney> list() {
		// TODO Auto-generated method stub
		return stopmoney.list();
	}

	@Override
	public void add(Stopmoney t) {
		// TODO Auto-generated method stub
		stopmoney.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		stopmoney.delete(id);
	}

	@Override
	public void update(Stopmoney t) {
		// TODO Auto-generated method stub
		stopmoney.update(t);
	}

	@Override
	public Stopmoney getById(Integer id) {
		// TODO Auto-generated method stub
		return stopmoney.getById(id);
	}

	@Override
	public Stopmoney getOrder(String order) {
		// TODO Auto-generated method stub
		return stopmoney.getOrder(order);
	}

	@Override
	public List<Stopmoney> likeStopmoney(Stopmoney stopmoneys) {
		// TODO Auto-generated method stub
		return stopmoney.likeStopmoney(stopmoneys);
	}

	

}
