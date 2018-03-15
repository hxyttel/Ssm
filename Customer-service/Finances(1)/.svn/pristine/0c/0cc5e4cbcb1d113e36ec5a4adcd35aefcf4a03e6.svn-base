package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.RechargeMapper;
import com.p2p.pojo.Recharge;
import com.p2p.service.back.RechargesService;
import com.p2p.util.PageInfo;

@Service
@Transactional
public class RechargesServiceImpl implements RechargesService {
	@Resource
	private RechargeMapper rechargeMapper;

	@Override
	public int addModel(Recharge model) {
		return rechargeMapper.addModel(model);
	}

	@Override
	public Recharge getModel(Recharge model) {
		return rechargeMapper.getModel(model);
	};

	@Override
	public List<Recharge> getAllModel() {
		return rechargeMapper.getAllModel();
	}

	@Override
	public int update(Recharge model) {
		return rechargeMapper.update(model);
	}

	@Override
	public int delete(Recharge model) {
		return rechargeMapper.delete(model);
	}

	@Override
	public Recharge findModel(Integer id) {
		return rechargeMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo,Recharge recharge) {
		Page<Recharge> page = new Page(pageInfo.getNowpage(), pageInfo.getSize());
		List<Recharge> list = rechargeMapper.selectPage(page, pageInfo.getCondition(),recharge);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer rechargeCount(Recharge recharge) {
		return rechargeMapper.rechargeCount(recharge);
	}

	
}
