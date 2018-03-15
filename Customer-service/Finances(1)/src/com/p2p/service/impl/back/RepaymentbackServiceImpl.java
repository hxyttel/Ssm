package com.p2p.service.impl.back;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.mapper.RepaymentMapper;
import com.p2p.pojo.Contact;
import com.p2p.pojo.Repayment;
import com.p2p.service.back.RepaymentbackService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class RepaymentbackServiceImpl implements RepaymentbackService{

	@Resource
	private RepaymentMapper repaymentMapper;

	@Override
	public int addModel(Repayment model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Repayment getModel(Repayment model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Repayment> getAllModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Repayment model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Repayment model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Repayment findModel(Integer id) {
		return repaymentMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo, Repayment repayment) {
		Page<Repayment> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Repayment> list = repaymentMapper.selectPage(page, pageInfo.getCondition(), repayment);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer repaymentcount() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateRepayment() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
