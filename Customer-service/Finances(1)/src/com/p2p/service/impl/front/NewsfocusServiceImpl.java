package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.NewsfocusMapper;
import com.p2p.pojo.Employe;
import com.p2p.pojo.Newsfocus;
import com.p2p.service.front.NewsfocusService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class NewsfocusServiceImpl implements NewsfocusService{
	
	@Resource
	private NewsfocusMapper newsfocusMapper;
	
	@Override
	public int addModel(Newsfocus model) {
		return newsfocusMapper.addModel(model);
	}

	@Override
	public Newsfocus getModel(Newsfocus model) {
		return newsfocusMapper.getModel(model);
	}

	@Override
	public List<Newsfocus> getAllModel() {
		return newsfocusMapper.getAllModel();
	}

	@Override
	public int update(Newsfocus model) {
		return newsfocusMapper.update(model);
	}

	@Override
	public int delete(Newsfocus model) {
		return newsfocusMapper.delete(model);
	}

	@Override
	public Newsfocus findModel(Integer id) {
		return newsfocusMapper.findModel(id);
	}

	@Override
	public List<Newsfocus> selectProductsByPage(Integer startPos, Integer pageSize) {
		return newsfocusMapper.selectProductsByPage(startPos, pageSize);
	}

	@Override
	public long getProductsCount() {
		return newsfocusMapper.getProductsCount();
	}

	@Override
	public void selectPage(PageInfo pageInfo, Newsfocus newsfocus) {
		//传入一个分页bean pageInfo
		Page<Newsfocus> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Newsfocus> list = newsfocusMapper.selectPage(page, pageInfo.getCondition(), newsfocus);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer newsfocusCount(Newsfocus newsfocus) {
		return newsfocusMapper.newsfocusCount(newsfocus);
	}

	@Override
	public List<Newsfocus> selectNewsfocus(Integer id) {
		return newsfocusMapper.selectNewsfocus(id);
	}
	
}
