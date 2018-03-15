package com.p2p.service.impl.front;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.MoneyDetailMapper;
import com.p2p.pojo.MoneyDetail;
import com.p2p.pojo.Moneyrecord;
import com.p2p.service.front.MoneyDetailService;
import com.p2p.util.PageInfo;


@Transactional
@Service
public class MoneyDetailServiceImpl implements MoneyDetailService{

	@Resource
	private MoneyDetailMapper moneyDetail;
	
	@Override
	public int addModel(MoneyDetail model) {
		return moneyDetail.addModel(model);
	}

	@Override
	public MoneyDetail getModel(MoneyDetail model) {
		return moneyDetail.getModel(model);
	}

	@Override
	public List<MoneyDetail> getAllModel() {
		return moneyDetail.getAllModel();
	}

	@Override
	public int update(MoneyDetail model) {
		return moneyDetail.update(model);
	}

	@Override
	public int delete(MoneyDetail model) {
		return moneyDetail.delete(model);
	}

	@Override
	public MoneyDetail findModel(Integer id) {
		return moneyDetail.findModel(id);
	}

	@Override
	public MoneyDetail findUserMsg(Integer isuser) {
		return moneyDetail.findUserMsg(isuser);
	}

	@Override
	public void selectPage(PageInfo pageInfo, MoneyDetail moneydetail) {
		Page<MoneyDetail> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<MoneyDetail> list = moneyDetail.selectPage(page, pageInfo.getCondition(), moneydetail);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer moneyDetailCount() {
	
		return moneyDetail.moneyDetailCount();
	}

	@Override
	public List<MoneyDetail> selectMoney(Integer uid) {
	
		return moneyDetail.selectMoney(uid);
	}

	@Override
	public List<MoneyDetail> seleMonreyReByTime(MoneyDetail moneydetail) {
		return moneyDetail.seleMonreyReByTime(moneydetail);
	}

}
