package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.UserlevelMapper;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Userlevel;
import com.p2p.service.back.UserlevelService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class UserlevelServiceImpl implements UserlevelService{
	
	@Resource 
	private UserlevelMapper userlevelmapper;
	
	@Override
	public int addModel(Userlevel model) {
		// TODO Auto-generated method stub
		return userlevelmapper.addModel(model);
	}

	@Override
	public Userlevel getModel(Userlevel model) {
		// TODO Auto-generated method stub
		return userlevelmapper.getModel(model);
	}

	@Override
	public List<Userlevel> getAllModel() {
		// TODO Auto-generated method stub
		return userlevelmapper.getAllModel();
	}

	@Override
	public int update(Userlevel userlevel) {
		// TODO Auto-generated method stub
		return userlevelmapper.update(userlevel);
	}

	@Override
	public int delete(Userlevel userlevel) {
		// TODO Auto-generated method stub
		return userlevelmapper.delete(userlevel);
	}

	@Override
	public Userlevel findModel(Integer id) {
		// TODO Auto-generated method stub
		return userlevelmapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
		Page<Userlevel> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Userlevel> list = userlevelmapper.selectPage(page, pageInfo.getCondition());
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer UserlevelCount() {
		// TODO Auto-generated method stub
		return userlevelmapper.UserlevelCount();
	}

	@Override
	public List<Userinfo> seleUserlevelList() {
		return userlevelmapper.seleUserlevelList();
	}


	

}
