package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.CooorganizMapper;
import com.p2p.pojo.Cooorganiz;
import com.p2p.service.back.CooorganizService;
import com.p2p.util.PageInfo;
/**
 * 操作人:李钟辉
 * 操作时间:2017-12-22
 * 合作机构的Service
 * */
@Transactional
@Service
public class CooorganizServiceImpl implements CooorganizService{
		
	@Resource
	private CooorganizMapper cooorganizMapper;
	
	@Override
	public int addModel(Cooorganiz cooorganiz) {
		
		
		return cooorganizMapper.addModel(cooorganiz);
	}

	@Override
	public Cooorganiz getModel(Cooorganiz cooorganiz) {
		
		return cooorganizMapper.getModel(cooorganiz);
	}

	@Override
	public List<Cooorganiz> getAllModel() {
		
		return cooorganizMapper.getAllModel();
	}

	@Override
	public int update(Cooorganiz cooorganiz) {
		
		return cooorganizMapper.update(cooorganiz);
	}

	@Override
	public int delete(Cooorganiz cooorganiz) {
		
		return cooorganizMapper.delete(cooorganiz);
	}

	@Override
	public Cooorganiz findModel(Integer id) {
		
		return cooorganizMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo, Cooorganiz cooorganiz) {
		Page<Cooorganiz> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Cooorganiz> list = cooorganizMapper.selectPage(page, pageInfo.getCondition(),cooorganiz);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer cooorganizCount() {
		
		return cooorganizMapper.cooorganizCount();
	}
	
}
