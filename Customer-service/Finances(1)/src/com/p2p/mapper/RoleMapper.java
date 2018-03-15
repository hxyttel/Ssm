package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Powertree;
import com.p2p.pojo.Role;

/**
 * 关于后台角色相关操作的mappper
 * 2017-11-18
 * 操作人:胡孝玉
 * */
public interface RoleMapper extends IBaseDao<Integer,Role>{
	
	//实现分页查询
	List<Role> selectPage(Pagination page,Map<String ,Object> params,@Param(value="role") Role role);
	
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
