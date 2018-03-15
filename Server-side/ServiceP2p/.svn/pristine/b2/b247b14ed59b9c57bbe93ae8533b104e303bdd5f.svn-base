package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.RechargeMapper;
import com.p2p.pojo.Recharge;
import com.p2p.services.RechargeService;

@Transactional
@Service
public class RechargeServiceImpl implements RechargeService{
	
	@Resource
	private RechargeMapper rechargemapp;
	
	
	@Override
	public List<Recharge> list() {
		return rechargemapp.list();
	}

	@Override
	public void add(Recharge t) {
		rechargemapp.add(t);
	}

	@Override
	public void delete(Integer id) {
		rechargemapp.delete(id);
	}

	@Override
	public void update(Recharge t) {
		rechargemapp.update(t);
	}

	@Override
	public Recharge getById(Integer id) {
		return rechargemapp.getById(id);
	}

	@Override
	public List<Recharge> listLike(Recharge recharge) {
		
		return rechargemapp.listLike(recharge);
	}

}
