package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Employe;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Newsfocus;

/**
 * 关于新闻聚焦的mapper
 * 饶磊
 * 2018.1.19
 * */
public interface NewsfocusMapper extends IBaseDao<Integer, Newsfocus>{
	/** 
	 * 使用注解方式传入多个参数，用户产品分页，
	 * @param page 
	 * @return startPos},#{pageSize}  
	 */  
	public List<Newsfocus> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize")Integer  pageSize);  
		  
	/** 
	 * 取得产品数量信息，
	 * @return 
	 */  
	public long getProductsCount();

	
	Newsfocus getBynewsfocusname(String nftitle);
	
	//实现分页查询
	List<Newsfocus> selectPage(Pagination page,Map<String ,Object> params,@Param(value="newsfocus") Newsfocus newsfocus);
	
	//查询总的记录数
	abstract Integer newsfocusCount(@Param(value="newsfocus") Newsfocus newsfocus); 

	//查单个数据
	abstract List<Newsfocus> selectNewsfocus(Integer id);
}
