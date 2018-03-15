package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.NoticeMapper;
import com.p2p.pojo.Notice;
import com.p2p.service.back.NoticeService;
import com.p2p.util.PageInfo;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-25
 * 操作后台员工mapper
 * */
@Transactional
@Service
public class NoticeServiceImpl implements NoticeService{
	@Resource
	private NoticeMapper noticeMapper;
	@Override
	public int addModel(Notice notice) {
		return noticeMapper.addModel(notice);
	}

	@Override
	public Notice getModel(Notice notice) {
		return noticeMapper.getModel(notice);
	}

	@Override
	public List<Notice> getAllModel() {
		return noticeMapper.getAllModel();
	}

	@Override
	public int update(Notice notice) {
		return noticeMapper.update(notice);
	}

	@Override
	public int delete(Notice notice) {
		return noticeMapper.delete(notice);
	}

	@Override
	public Notice findModel(Integer id) {
		return noticeMapper.findModel(id);
	}

	//后台分页查询
	public void pageNotice(PageInfo pageInfo, Notice notice) {
		Page<Notice> page = new Page(pageInfo.getNowpage(), pageInfo.getPagesize());
		List<Notice> list = noticeMapper.pageNotice(page,pageInfo.getCondition(), notice);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer countNotice() {
		return noticeMapper.countNotice();
	}
	
	
}
