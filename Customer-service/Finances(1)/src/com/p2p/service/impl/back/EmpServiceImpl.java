package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.EmpMapper;
import com.p2p.pojo.Employe;
import com.p2p.service.back.EmpService;
import com.p2p.util.PageInfo;

/**
 * 操作人:汪栋才、杨嘉辉
 * 操作时间:2017-12-18
 * 后台员工的Service实现类
 * */
@Component
@Service
public class EmpServiceImpl implements EmpService{
    
	@Resource
	private EmpMapper empMapper;
	
	@Override
	public int addModel(Employe model) {
		
		return empMapper.addModel(model);
	}

	@Override
	public Employe getModel(Employe model) {
		return empMapper.getModel(model);
	}

	@Override
	public List<Employe> getAllModel() {
		return empMapper.getAllModel();
	}

	@Override
	public int update(Employe user) {
		return empMapper.update(user);
	}

	@Override
	public int delete(Employe user) {
		return empMapper.delete(user);
	}

	@Override
	public Employe getByemployname(String ename) {
		return empMapper.getByemployname(ename);
	}

	@Override
	public Employe findModel(Integer id) {
		return empMapper.findModel(id);
	}
	
	@Override
	public void selectPage(PageInfo pageInfo,	Employe emp) {
		//传入一个分页bean pageInfo
		Page<Employe> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Employe> list = empMapper.selectPage(page, pageInfo.getCondition(), emp);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer employeCount(Employe emp) {
		return empMapper.employeCount(emp);
	}

	

}
