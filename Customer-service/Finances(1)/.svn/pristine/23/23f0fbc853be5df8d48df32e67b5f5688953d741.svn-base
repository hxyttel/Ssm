package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Activity;

/**
 * 操作人:吴光海
 * 创建时间:2017-12-19
 * 操作后台员工的mapper
 * */
public interface ActivityMapper extends IBaseDao<Integer, Activity>{
	//后台分页查询
	List<Activity> pageActivity(Pagination page,Map<String,Object> params,@Param(value="activity")Activity activity);
	//查询总记录数
	abstract Integer countActivity();
	
	List<Activity> activityName(Integer atid);
}
