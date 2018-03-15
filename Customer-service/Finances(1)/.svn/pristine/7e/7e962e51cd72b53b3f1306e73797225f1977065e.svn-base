package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.NoticeTypeMapper;
import com.p2p.pojo.Noticetype;
import com.p2p.service.back.NoticeTypeService;
import com.p2p.util.PageInfo;
/**
 * 操作人:吴光海
 * 创建时间:2017-12-26
 * 操作后台公告类型的mapper
 * */
@Transactional
@Service
public class NoticeTypeServiceImpl implements NoticeTypeService{
	@Resource
	private NoticeTypeMapper noticeTypeMapper;
	@Override
	public int addModel(Noticetype noticetype) {
		return noticeTypeMapper.addModel(noticetype);
	}

	@Override
	public Noticetype getModel(Noticetype noticetype) {
		return noticeTypeMapper.getModel(noticetype);
	}

	@Override
	public List<Noticetype> getAllModel() {
		return noticeTypeMapper.getAllModel();
	}

	@Override
	public int update(Noticetype noticetype) {
		return noticeTypeMapper.update(noticetype);
	}

	@Override
	public int delete(Noticetype noticetype) {
		return noticeTypeMapper.delete(noticetype);
	}

	@Override
	public Noticetype findModel(Integer id) {
		return noticeTypeMapper.findModel(id);
	}

	@Override
	public void pageNoticeType(PageInfo pageInfo, Noticetype noticetype) {
		Page page = new Page<>(pageInfo.getNowpage(),pageInfo.getPagesize());
		List<Noticetype> list = noticeTypeMapper.pageNoticeType(page, pageInfo.getCondition(), noticetype);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer countNoticeType() {
		return noticeTypeMapper.countNoticeType();
	}

}
