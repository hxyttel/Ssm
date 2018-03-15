package com.p2p.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.BankMapper;
import com.p2p.pojo.Bank;
import com.p2p.services.BankService;

@Transactional
@Service
public class BankServiceImpl implements BankService{

	@Resource
	private BankMapper bankmapper;
	
	@Override
	public List<Bank> list() {
		// TODO Auto-generated method stub
		return bankmapper.list();
	}

	@Override
	public void add(Bank t) {
		// TODO Auto-generated method stub
		bankmapper.add(t);
	}

	@Override
	public void update(Bank t) {
		// TODO Auto-generated method stub
		bankmapper.update(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		bankmapper.delete(id);
	}


	@Override
	public Bank getById(Integer id) {
		// TODO Auto-generated method stub
		return bankmapper.getById(id);
	}

	@Override
	public Bank selectBankCard(String card) {
		// TODO Auto-generated method stub
		return bankmapper.selectBankCard(card);
	}

	@Override
	public List<Bank> listLike(Bank bank) {
		// TODO Auto-generated method stub
		return bankmapper.listLike(bank);
	}

	@Override
	public void delbank(String bcode) {
		// TODO Auto-generated method stub
		bankmapper.delbank(bcode);
	}

}
