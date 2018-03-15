package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.RepayMapper;
import com.p2p.pojo.Repayment;
import com.p2p.services.RepayServices;

@Transactional
@Service
public class RepayServiceImpl implements RepayServices{
	
	@Resource
	private RepayMapper repaym;
	
	@Override
	public List<Repayment> list() {
		return repaym.list();
	}

	@Override
	public void add(Repayment t) {
		repaym.add(t);
	}

	@Override
	public void delete(Integer id) {
		repaym.delete(id);
	}

	@Override
	public void update(Repayment t) {
		repaym.update(t);
	}

	@Override
	public Repayment getById(Integer id) {
		return repaym.getById(id);
	}

	@Override
	public Repayment getByOrder(String order) {
		// TODO Auto-generated method stub
		return repaym.getByOrder(order);
	}

	@Override
	public List<Repayment> listLike(Repayment repayment) {
		// TODO Auto-generated method stub
		return repaym.listLike(repayment);
	}

}
