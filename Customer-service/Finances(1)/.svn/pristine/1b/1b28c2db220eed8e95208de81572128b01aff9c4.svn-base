package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.base.IBaseDao;
import com.p2p.mapper.FabiaoMapper;
import com.p2p.pojo.Fabiao;
import com.p2p.service.back.FabiaobackService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class FabiaobackServiceImpl implements FabiaobackService{

	@Resource
	private FabiaoMapper fabiaomapper;
	
	@Override
	public int addModel(Fabiao fabiao) {
		// TODO Auto-generated method stub
		return fabiaomapper.addModel(fabiao);
	}

	@Override
	public Fabiao getModel(Fabiao fabiao) {
		// TODO Auto-generated method stub
		return fabiaomapper.getModel(fabiao);
	}

	@Override
	public List<Fabiao> getAllModel() {
		// TODO Auto-generated method stub
		return fabiaomapper.getAllModel();
	}

	@Override
	public int update(Fabiao fabiao) {
		// TODO Auto-generated method stub
		return fabiaomapper.update(fabiao);
	}

	@Override
	public int delete(Fabiao fabiao) {
		// TODO Auto-generated method stub
		return fabiaomapper.delete(fabiao);
	}

	@Override
	public Fabiao findModel(Integer id) {
		// TODO Auto-generated method stub
		return fabiaomapper.findModel(id);
	}
	
	public void selectPageFabiao(PageInfo pageInfo,	Fabiao fabiao) {
		//传入一个分页bean pageInfo
		Page<Fabiao> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Fabiao> list = fabiaomapper.selectPageFabiao(page, pageInfo.getCondition(), fabiao);
		//List<Fabiao> list = fabiaomapper.getAllModel();
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	public Integer fabiaoCount() {
		return fabiaomapper.fabiaoCount();
	}

	public void selectFabiao(PageInfo pageInfo, Fabiao fabiao) {
		//传入一个分页bean pageInfo
		Page<Fabiao> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Fabiao> list = fabiaomapper.selectFabiao(page, pageInfo.getCondition(), fabiao);
		//List<Fabiao> list = fabiaomapper.selectPageFabiao(page, pageInfo.getCondition(), fabiao);
		//List<Fabiao> list = fabiaomapper.getAllModel();
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

}
