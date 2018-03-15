package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.RechargeMapper;
import com.p2p.pojo.Recharge;
import com.p2p.pojo.Userinfo;
import com.p2p.service.front.RechargeService;

@Transactional
@Service
public class RechargeServiceImpl implements RechargeService{

	@Resource
	private RechargeMapper rechargeMapper;
	@Override
	public int addModel(Recharge recharge) {
		return rechargeMapper.addModel(recharge);
	}

	@Override
	public Recharge getModel(Recharge recharge) {
		return rechargeMapper.getModel(recharge);
	}

	@Override
	public List<Recharge> getAllModel() {
		return rechargeMapper.getAllModel();
	}

	@Override
	public int update(Recharge recharge) {
		return rechargeMapper.update(recharge);
	}

	@Override
	public int delete(Recharge recharge) {
		return rechargeMapper.delete(recharge);
	}

	@Override
	public Recharge findModel(Integer id) {
		return rechargeMapper.findModel(id);
	}

	@Override
	public Userinfo getUserinfo(Userinfo userinfo) {
		return rechargeMapper.getUserinfo(userinfo);
	}

}
