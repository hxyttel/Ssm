package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.BidMapper;
import com.p2p.pojo.Bid;
import com.p2p.service.front.BidfabiaoService;
@Service
@Transactional
public class BidfabiaoServiceImpl implements BidfabiaoService{
	@Resource
	private BidMapper bidMapper;
	
	@Override
	public int addModel(Bid model) {
		return bidMapper.addModel(model);
	}

	@Override
	public Bid getModel(Bid model) {
		// TODO Auto-generated method stub
		return bidMapper.getModel(model);
	}

	@Override
	public List<Bid> getAllModel() {
		// TODO Auto-generated method stub
		return bidMapper.getAllModel();
	}

	@Override
	public int update(Bid model) {
		// TODO Auto-generated method stub
		return bidMapper.update(model);
	}

	@Override
	public int delete(Bid model) {
		// TODO Auto-generated method stub
		return bidMapper.delete(model);
	}

	@Override
	public Bid findModel(Integer id) {
		// TODO Auto-generated method stub
		return bidMapper.findModel(id);
	}

	@Override
	public List<Bid> selectBid(Integer id) {
		return bidMapper.selectBid(id);
	}

}
