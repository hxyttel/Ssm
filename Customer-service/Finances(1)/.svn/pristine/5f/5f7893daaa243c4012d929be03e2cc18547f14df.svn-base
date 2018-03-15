package com.p2p.service.impl.back;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.mapper.UservouchMapper;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Uservouch;
import com.p2p.service.back.UservouchService;
import com.p2p.util.PageInfo;


@Transactional
@Service
public class UservouchServiceImpl implements UservouchService{
	@Resource
	private UservouchMapper uservouchmapper;

	@Override
	public int addModel(Uservouch model) {
		return uservouchmapper.addModel(model);
	}

	@Override
	public Uservouch getModel(Uservouch model) {
		return uservouchmapper.getModel(model);
	}

	@Override
	public List<Uservouch> getAllModel() {
		return uservouchmapper.getAllModel();
	}

	@Override
	public int update(Uservouch uservouch) {
		return uservouchmapper.update(uservouch);
	}

	@Override
	public int delete(Uservouch uservouch) {
		return uservouchmapper.delete(uservouch);
	}

	@Override
	public Uservouch findModel(Integer id) {
		return uservouchmapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
		Page<Uservouch> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Uservouch> list = uservouchmapper.selectPage(page, pageInfo.getCondition());
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer UservouchyCount() {
		return uservouchmapper.UservouchyCount();
	}

	@Override
	public List<Userinfo> seleUservouchList() {
		// TODO Auto-generated method stub
		return uservouchmapper.seleUservouchList();
	}
	@Override
	public List<Uservouch> selectByUserId(Integer userid) {
		return uservouchmapper.selectByUserId(userid);
	}

	@Override
	public List<Uservouch> selectByNIU(Integer uvid) {
		return uservouchmapper.selectByNIU(uvid);
	}

	@Override
	public List<Uservouch> selectByUse(Integer uvid) {
		return uservouchmapper.selectByUse(uvid);
	}

	@Override
	public List<Uservouch> selectByOver(Integer uvid) {
		return uservouchmapper.selectByOver(uvid);
	}

	
}
