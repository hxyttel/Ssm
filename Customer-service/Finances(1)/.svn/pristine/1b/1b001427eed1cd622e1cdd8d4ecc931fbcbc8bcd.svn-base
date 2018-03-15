package com.p2p.service.impl.back;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.WithdrawalsMapper;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Withdrawals;
import com.p2p.service.back.WithdrawalsService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class WithdrawalsServiceImpl implements WithdrawalsService{
	@Resource 
	private WithdrawalsMapper withdrawalsMapper;

	@Override
	public int addModel(Withdrawals model) {
		return withdrawalsMapper.addModel(model);
	}

	@Override
	public Withdrawals getModel(Withdrawals model) {
		return withdrawalsMapper.getModel(model);
	}

	@Override
	public List<Withdrawals> getAllModel() {
		return withdrawalsMapper.getAllModel();
	}

	@Override
	public int update(Withdrawals withdrawals) {
		return withdrawalsMapper.update(withdrawals);
	}

	@Override
	public int delete(Withdrawals withdrawals) {
		// TODO Auto-generated method stub
		return withdrawalsMapper.delete(withdrawals);
	}


	@Override
	public Withdrawals findModel(Integer id) {
		// TODO Auto-generated method stub
		return withdrawalsMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
				Page<Withdrawals> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<Withdrawals> list = withdrawalsMapper.selectPage(page, pageInfo.getCondition());
				pageInfo.setRows(list);
				pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer withdrawalsCount() {
		// TODO Auto-generated method stub
		return withdrawalsMapper.withdrawalsCount();
	}

	@Override
	public List<Userinfo> seleWithdrawalsList() {
		// TODO Auto-generated method stub
		return withdrawalsMapper.seleWithdrawalsList();
	}

}
