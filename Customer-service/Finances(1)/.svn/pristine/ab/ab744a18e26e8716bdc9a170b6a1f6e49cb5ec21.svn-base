package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Employe;
import com.p2p.pojo.Role;
/**
 * 操作人:汪栋才、杨嘉辉
 * 创建时间:2017-12-28
 * 操作后台员工的Mapper
 * */
public interface EmpMapper extends IBaseDao<Integer, Employe>{
	Employe getByemployname(String ename);
	
	//实现分页查询
	List<Employe> selectPage(Pagination page,Map<String ,Object> params,@Param(value="emp") Employe emp);
	
	//查询总的记录数
	abstract Integer employeCount(@Param(value="emp") Employe emp);
	
	
}
