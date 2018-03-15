package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.RedmoneyMapper;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.Role;
import com.p2p.pojo.Userinfo;
import com.p2p.service.back.RedmoneyService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class RedmoneyServiceImpl implements RedmoneyService{
	
	@Resource
	private RedmoneyMapper redmoneymapper;
	@Override
	public int addModel(Redmoney model) {
		return redmoneymapper.addModel(model);
	}

	@Override
	public Redmoney getModel(Redmoney model) {
		return redmoneymapper.getModel(model);
	}

	@Override
	public List<Redmoney> getAllModel() {
		return redmoneymapper.getAllModel();
	}

	@Override
	public int update(Redmoney redmoney) {
		return redmoneymapper.update(redmoney);
	}

	@Override
	public int delete(Redmoney redmoney) {
		return redmoneymapper.delete(redmoney);
	}

	@Override
	public Redmoney findModel(Integer id) {
		return redmoneymapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
				Page<Redmoney> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<Redmoney> list = redmoneymapper.selectPage(page, pageInfo.getCondition());
				pageInfo.setRows(list);
				pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer redmoneyCount() {
		// TODO Auto-generated method stub
		return redmoneymapper.redmoneyCount();
	}

	@Override
	public List<Userinfo> selectRedmoneyList() {
		// TODO Auto-generated method stub
		return redmoneymapper.seleRedmoneyList();
	}

	@Override
	public List<Redmoney> selectByUserId(Integer userid) {
		return redmoneymapper.selectByUserId(userid);
	}

	@Override
	public List<Redmoney> selectByNIU(Integer uid) {
		return redmoneymapper.selectByNIU(uid);
	}

	@Override
	public List<Redmoney> selectByUse(Integer uid) {
		return redmoneymapper.selectByUse(uid);
	}

	@Override
	public List<Redmoney> selectByOver(Integer uid) {
		return redmoneymapper.selectByOver(uid);
	}



	
	

	

}
