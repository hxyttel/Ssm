package com.p2p.service.back;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Powertree;
import com.p2p.pojo.Role;
import com.p2p.util.PageInfo;

public interface RoleService extends IBaseService<Integer,Role>{
	
	//实现分页查询
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="role") Role role);//实现分页
		
	//查询总的记录数
	abstract Integer roleCount();
	
	//根据角色reid得到ptid
	abstract String selePtidByreid (Integer reid);
	
	//查询所有权限树
	abstract List<Powertree> selePowerTreeList();
	
	//根据ptid得到权限树名
	abstract String selePtnameByptid(Integer ptid);
	
	//修改权限树
	abstract int updatePowerTree(Role role);
	
	//根据emp的reid得到Role对象
	abstract Role getByereid(Integer reid);
	
	//查询所有的角色
	abstract List<Role> seleRoleList();
	
	
}
