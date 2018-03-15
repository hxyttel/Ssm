package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.EmpTaskMapper;
import com.p2p.pojo.EmpTask;
import com.p2p.service.back.EmpTaskService;

@Transactional
@Service
public class EmpTaskServiceImpl implements EmpTaskService{
	@Resource
	private EmpTaskMapper empTaskMapper;
	
	@Override
	public int addModel(EmpTask empTask) {
		return empTaskMapper.addModel(empTask);
	}

	@Override
	public EmpTask getModel(EmpTask empTask) {
		return empTaskMapper.getModel(empTask);
	}

	@Override
	public List<EmpTask> getAllModel() {
		return empTaskMapper.getAllModel();
	}

	@Override
	public int update(EmpTask empTask) {
		return empTaskMapper.update(empTask);
	}

	@Override
	public int delete(EmpTask empTask) {
		return empTaskMapper.delete(empTask);
	}

	@Override
	public EmpTask findModel(Integer id) {
		return empTaskMapper.findModel(id);
	}

	@Override
	public List<EmpTask> seleByEmpTask(EmpTask empTask) {
		return empTaskMapper.seleByEmpTask(empTask);
	}

}
