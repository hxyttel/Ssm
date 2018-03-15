package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.IndexpicMapper;
import com.p2p.pojo.Indexpic;
import com.p2p.service.back.IndexpicService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class IndexpicServiceImpl implements IndexpicService{
	
	@Resource
	private IndexpicMapper indexpicmapper;
	@Override
	public int addModel(Indexpic indexpic) {
		return indexpicmapper.addModel(indexpic);
	}

	@Override
	public Indexpic getModel(Indexpic indexpic) {
		return indexpicmapper.getModel(indexpic);
	}

	@Override
	public List<Indexpic> getAllModel() {
		return indexpicmapper.getAllModel();
	}

	@Override
	public int update(Indexpic indexpic) {
		return indexpicmapper.update(indexpic);
	}

	@Override
	public int delete(Indexpic indexpic) {
		return indexpicmapper.delete(indexpic);
	}

	@Override
	public Indexpic findModel(Integer id) {
		return indexpicmapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
		Page<Indexpic> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Indexpic> list = indexpicmapper.selectPage(page, pageInfo.getCondition());
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer indexCount() {
		return indexpicmapper.indexCount();
	}


}
