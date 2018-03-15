package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.MoneyrecordMapper;
import com.p2p.pojo.Moneyrecord;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.util.PageInfo;

/**
 * 操作人:杨嘉辉
 * 操作时间:2017-12-27
 * 后台资金明细的Service的实现类
 * */
@Transactional
@Service
public class MoneyrecordServiceImpl implements MoneyrecordServiece{
	
	@Resource
	private MoneyrecordMapper moneyrecordmapper;
	
	@Override
	public int addModel(Moneyrecord moneyrecord) {
		return moneyrecordmapper.addModel(moneyrecord);
	}

	@Override
	public Moneyrecord getModel(Moneyrecord moneyrecord) {
		return moneyrecordmapper.getModel(moneyrecord);
	}

	@Override
	public List<Moneyrecord> getAllModel() {
		return moneyrecordmapper.getAllModel();
	}

	@Override
	public int update(Moneyrecord moneyrecord) {
		return moneyrecordmapper.update(moneyrecord);
	}

	@Override
	public int delete(Moneyrecord moneyrecord) {
		return moneyrecordmapper.delete(moneyrecord);
	}

	@Override
	public Moneyrecord findModel(Integer id) {
		return moneyrecordmapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo,Moneyrecord cord) {
		//传入一个分页bean pageInfo
		Page<Moneyrecord> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Moneyrecord> list = moneyrecordmapper.selectPage(page, pageInfo.getCondition(), cord);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer moneyrecordCount() {
		return moneyrecordmapper.moneyrecordCount();
	}

	@Override
	public List<Moneyrecord> selectMoneyrecord(Integer uid) {
		
		return moneyrecordmapper.selectMoneyrecord(uid);
	}

	@Override
	public List<Moneyrecord> seleMonreyReByTime(Moneyrecord moneyrecord) {
		return moneyrecordmapper.seleMonreyReByTime(moneyrecord);
	}
	
}
