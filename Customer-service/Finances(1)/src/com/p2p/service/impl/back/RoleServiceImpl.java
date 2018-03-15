package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.RoleMapper;
import com.p2p.pojo.Powertree;
import com.p2p.pojo.Role;
import com.p2p.service.back.RoleService;
import com.p2p.util.PageInfo;

/**
 * 关于后台角色相关操作的service
 * 2017-11-18
 * 操作人:胡孝玉
 * */
@Transactional
@Service
public class RoleServiceImpl implements RoleService{
	@Resource
	private RoleMapper roleMapper;

	
	@Override
	public int update(Role role) {
		return roleMapper.update(role);
	}

	@Override
	public int delete(Role role) {
		return roleMapper.delete(role);
	}

	

	@Override
	public void selectPage(PageInfo pageInfo,Role role) {
		//传入一个分页bean pageInfo
				Page<Role> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<Role> list = roleMapper.selectPage(page, pageInfo.getCondition(),role);
				pageInfo.setRows(list);
				pageInfo.setTotal(list.size());
	}

	@Override
	public Integer roleCount() {
		return roleMapper.roleCount();
	}

	@Override
	public int addModel(Role role) {
		return roleMapper.addModel(role);
	}

	@Override
	public Role getModel(Role role) {
		return roleMapper.getModel(role);
	}

	@Override
	public List<Role> getAllModel() {
		return roleMapper.getAllModel();
	}

	@Override
	public Role findModel(Integer id) {
		return roleMapper.findModel(id);
	}

	@Override
	public String selePtidByreid(Integer reid) {
		return roleMapper.selePtidByreid(reid);
	}

	@Override
	public List<Powertree> selePowerTreeList() {
		return roleMapper.selePowerTreeList();
	}

	@Override
	public String selePtnameByptid(Integer ptid) {
		return roleMapper.selePtnameByptid(ptid);
	}

	@Override
	public int updatePowerTree(Role role) {
		return roleMapper.updatePowerTree(role);
	}

	@Override
	public Role getByereid(Integer reid) {
		return roleMapper.getByereid(reid);
	}

	@Override
	public List<Role> seleRoleList() {
		return roleMapper.seleRoleList();
	}

}
