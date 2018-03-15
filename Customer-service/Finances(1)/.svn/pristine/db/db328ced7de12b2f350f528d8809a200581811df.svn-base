package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.SetupnaticeMapper;
import com.p2p.pojo.Setupnatice;
import com.p2p.service.front.SetupnaticeService;

@Transactional
@Service
public class SetupnaticeServiceImpl implements SetupnaticeService{

	@Resource
	private SetupnaticeMapper setupnaticemapper;
	
	@Override
	public int addModel(Setupnatice model) {
		return setupnaticemapper.addModel(model);
	}

	@Override
	public Setupnatice getModel(Setupnatice model) {
		return setupnaticemapper.getModel(model);
	}

	@Override
	public List<Setupnatice> getAllModel() {
		return setupnaticemapper.getAllModel();
	}

	@Override
	public int update(Setupnatice model) {
		return setupnaticemapper.update(model);
	}

	@Override
	public int delete(Setupnatice model) {
		return setupnaticemapper.delete(model);
	}

	@Override
	public Setupnatice findModel(Integer id) {
		return setupnaticemapper.findModel(id);
	}

	@Override
	public List<Setupnatice> getUserSetup(Integer userid) {
		return setupnaticemapper.getUserSetup(userid);
	}
	
}
