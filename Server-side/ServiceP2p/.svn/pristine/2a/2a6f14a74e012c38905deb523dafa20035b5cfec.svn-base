package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.FabiaoMapper;
import com.p2p.pojo.Fabiao;
import com.p2p.services.FabiaoService;

@Transactional
@Service
public class FabiaoServiceImpl implements FabiaoService {

	@Resource
	private FabiaoMapper fabiaoMapper;
	@Override
	public List<Fabiao> list() {
		// TODO Auto-generated method stub
		return fabiaoMapper.list();
	}

	@Override
	public void add(Fabiao t) {
		// TODO Auto-generated method stub
		fabiaoMapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		fabiaoMapper.delete(id);
	}

	@Override
	public void update(Fabiao t) {
		// TODO Auto-generated method stub
		fabiaoMapper.update(t);
	}

	@Override
	public Fabiao getById(Integer id) {
		// TODO Auto-generated method stub
		return fabiaoMapper.getById(id);
	}

	@Override
	public Fabiao getByOrder(String order) {
		// TODO Auto-generated method stub
		return fabiaoMapper.getByOrder(order);
	}

	@Override
	public List<Fabiao> listLike(Fabiao fa) {
		// TODO Auto-generated method stub
		return fabiaoMapper.listLike(fa);
	}

}
