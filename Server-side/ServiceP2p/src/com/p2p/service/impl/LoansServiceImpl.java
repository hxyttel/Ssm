package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.LoansMapper;
import com.p2p.pojo.Loans;
import com.p2p.services.LoansService;

@Transactional
@Service
public class LoansServiceImpl implements LoansService{
	
	@Resource
	private LoansMapper loansmapp;
	
	@Override
	public List<Loans> list() {
		return loansmapp.list();
	}

	@Override
	public void add(Loans t) {
		loansmapp.add(t);
	}

	@Override
	public void delete(Integer id) {
		loansmapp.delete(id);
	}

	@Override
	public void update(Loans t) {
		loansmapp.update(t);
	}

	@Override
	public Loans getById(Integer id) {
		return loansmapp.getById(id);
	}

}
