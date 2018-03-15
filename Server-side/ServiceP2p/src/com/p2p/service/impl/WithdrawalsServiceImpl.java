package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.WithdrawalsMapper;
import com.p2p.pojo.Withdrawals;
import com.p2p.services.WithdrawalsService;

@Transactional
@Service
public class WithdrawalsServiceImpl implements WithdrawalsService {

	@Resource
	private WithdrawalsMapper withdrawalsMapper;
	@Override
	public List<Withdrawals> list() {
		// TODO Auto-generated method stub
		return withdrawalsMapper.list();
	}

	@Override
	public void add(Withdrawals t) {
		// TODO Auto-generated method stub
		withdrawalsMapper.add(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		withdrawalsMapper.delete(id);
	}

	@Override
	public void update(Withdrawals t) {
		// TODO Auto-generated method stub
		withdrawalsMapper.update(t);
	}

	@Override
	public Withdrawals getById(Integer id) {
		// TODO Auto-generated method stub
		return withdrawalsMapper.getById(id);
	}

	@Override
	public List<Withdrawals> listLike(Withdrawals withdrawals) {
		return withdrawalsMapper.listLike(withdrawals);
	}

}
