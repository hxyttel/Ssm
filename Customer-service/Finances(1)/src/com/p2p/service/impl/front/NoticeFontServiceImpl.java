package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.NoticeMapper;
import com.p2p.pojo.Notice;
import com.p2p.service.back.NoticeService;
import com.p2p.service.front.NoticeFontSrvice;
import com.p2p.util.PageInfo;
@Transactional
@Service
public class NoticeFontServiceImpl implements NoticeFontSrvice{
	@Resource
	private NoticeMapper noticeMapper;
	public int addModel(Notice model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Notice getModel(Notice model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Notice> getAllModel() {
		return noticeMapper.getAllModel();
	}

	@Override
	public int update(Notice model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Notice model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Notice findModel(Integer id) {
		return noticeMapper.findModel(id);
	}

	@Override
	public List<Notice> selectName(Integer nid) {
		return noticeMapper.selectName(nid);
	}

	@Override
	public List<Notice> selectByType(String ntype) {
		return noticeMapper.selectByType(ntype);
	}
	
}
