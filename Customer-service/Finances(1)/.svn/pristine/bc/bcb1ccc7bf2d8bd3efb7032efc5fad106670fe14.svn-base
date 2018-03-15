package com.p2p.service.impl.front;

/**
 * 还款实现类
 * 操作人：邱雪云
 * 操作时间：2018-01-17
 * */
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.RepaymentMapper;
import com.p2p.pojo.Repayment;
import com.p2p.service.front.RepaymentService;

@Transactional
@Service
public class RepaymentServiceImpl implements RepaymentService {

	@Resource
	private RepaymentMapper repaymentMapper;
	@Override
	public int addModel(Repayment model) {
		// TODO Auto-generated method stub
		return repaymentMapper.addModel(model);
	}

	@Override
	public Repayment getModel(Repayment model) {
		// TODO Auto-generated method stub
		return repaymentMapper.getModel(model);
	}

	@Override
	public List<Repayment> getAllModel() {
		// TODO Auto-generated method stub
		return repaymentMapper.getAllModel();
	}

	@Override
	public int update(Repayment model) {
		// TODO Auto-generated method stub
		return repaymentMapper.update(model);
	}

	@Override
	public int delete(Repayment model) {
		// TODO Auto-generated method stub
		return repaymentMapper.delete(model);
	}

	@Override
	public Repayment findModel(Integer id) {
		// TODO Auto-generated method stub
		return repaymentMapper.findModel(id);
	}

	@Override
	public List<Repayment> selectMoney(Integer uid) {
		// TODO Auto-generated method stub
		return repaymentMapper.selectMoney(uid);
	}

	@Override
	public Integer repaymentCount() {
		// TODO Auto-generated method stub
		return repaymentMapper.repaymentCount();
	}

}
