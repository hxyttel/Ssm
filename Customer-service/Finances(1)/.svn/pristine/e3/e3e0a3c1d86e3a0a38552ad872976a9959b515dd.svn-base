package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.SingMapper;
import com.p2p.pojo.Sing;
import com.p2p.service.front.SingService;

@Transactional
@Service
public class SingServiceImpl implements SingService{
	
	@Resource
	private SingMapper singmapper;
	
	public int addModel(Sing model) {
		return singmapper.addModel(model);
	}

	@Override
	public Sing getModel(Sing model) {
		return singmapper.getModel(model);
	}

	@Override
	public List<Sing> getAllModel() {
		return singmapper.getAllModel();
	}

	@Override
	public int update(Sing model) {
		return singmapper.update(model);
	}

	@Override
	public int delete(Sing model) {
		return singmapper.delete(model);
	}

	@Override
	public Sing findModel(Integer id) {
		return singmapper.findModel(id);
	}

	@Override
	public List<Sing> checkusersing(String uid, String day) {
		return singmapper.checkusersing(uid, day);
	}

}
