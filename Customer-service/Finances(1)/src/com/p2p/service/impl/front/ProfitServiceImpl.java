package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.ProfitMapper;
import com.p2p.pojo.Profit;
import com.p2p.service.front.ProfitService;

@Transactional
@Service
public class ProfitServiceImpl implements ProfitService{

	@Resource
	private ProfitMapper profitMapper;
	@Override
	public int addModel(Profit profit) {
		return profitMapper.addModel(profit);
	}

	@Override
	public Profit getModel(Profit profit) {
		return profitMapper.getModel(profit);
	}

	@Override
	public List<Profit> getAllModel() {
		return profitMapper.getAllModel();
	}

	@Override
	public int update(Profit profit) {
		return profitMapper.update(profit);
	}

	@Override
	public int delete(Profit profit) {
		return profitMapper.delete(profit);
	}

	@Override
	public Profit findModel(Integer id) {
		return profitMapper.findModel(id);
	}

	@Override
	public List<Profit> seleByProfit(Profit profit) {
		return profitMapper.seleByProfit(profit);
	}

	@Override
	public String seleProfitBytimeMax() {
		return profitMapper.seleProfitBytimeMax();
	}

	@Override
	public String seleProfitBytimemin() {
		return profitMapper.seleProfitBytimemin();
	}

}
