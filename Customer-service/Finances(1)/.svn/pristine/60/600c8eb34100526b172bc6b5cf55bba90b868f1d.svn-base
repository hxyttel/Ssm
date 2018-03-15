package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.AboutMapper;
import com.p2p.pojo.About;
import com.p2p.service.back.AboutService;
import com.p2p.util.PageInfo;

@Service
@Transactional
public class AboutServiceImpl implements AboutService{
	
	@Resource
	private AboutMapper aboutMapper;
	@Override
	public int addModel(About model) {
		return aboutMapper.addModel(model);
	}


	@Override
	public About getModel(About model) {
		return aboutMapper.getModel(model);
	}

	@Override
	public List<About> getAllModel() {
		return aboutMapper.getAllModel();
	}

	@Override
	public int update(About model) {
		return aboutMapper.update(model);
	}

	@Override
	public int delete(About model) {
		return aboutMapper.delete(model);
	}

	@Override
	public About findModel(Integer id) {
		return aboutMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
				Page<About> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<About> list = aboutMapper.selectPage(page, pageInfo.getCondition());
				pageInfo.setRows(list);
				pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer aboutCount() {
		return aboutMapper.aboutCount();
	}

}
