package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.VideoMapper;
import com.p2p.pojo.About;
import com.p2p.pojo.Video;
import com.p2p.service.back.VideoService;
import com.p2p.util.PageInfo;
@Service
@Transactional
public class VideoServiceImpl implements VideoService{

	@Resource
	private VideoMapper videoMapper;
	@Override
	public int addModel(Video model) {
		return videoMapper.addModel(model);
	}

	@Override
	public Video getModel(Video model) {
		return videoMapper.getModel(model);
	}

	@Override
	public List<Video> getAllModel() {
		return videoMapper.getAllModel();
	}

	@Override
	public int update(Video model) {
		return videoMapper.update(model);
	}

	@Override
	public int delete(Video model) {
		return videoMapper.delete(model);
	}

	@Override
	public Video findModel(Integer id) {
		return videoMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		Page<Video> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Video> list = videoMapper.selectPage(page, pageInfo.getCondition());
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer videoCount() {
		return videoMapper.videoCount();
	}

}
