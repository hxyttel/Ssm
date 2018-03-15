package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Employe;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.ProjectSelect;

public interface FabiaoMapper extends IBaseDao<Integer, Fabiao>{

	/** 
	 * 使用注解方式传入多个参数，用户产品分页， 根据标类型查询
	 * @param page 
	 * @param 标类型 
	 * @return startPos},#{pageSize}  
	 */  
	public List<Fabiao> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize")Integer  pageSize,@Param(value="fpart")String fpart);  
		  
		/** 
		 * 取得产品数量信息，
		 * @return 
		 */  
		public long getProductsCount(@Param(value="fpart")String fpart);  
		
		
		
		List<Fabiao> selectByType(@Param("type")String type);
		
		//条件查询
		List<Fabiao> selectByLike(ProjectSelect rProjectSelect);
		
		//实现分页查询
		List<Fabiao> selectPageFabiao(Pagination page,Map<String ,Object> params,@Param(value="fabiao") Fabiao fabiao);
		
		//实现审核标查询
		List<Fabiao> selectFabiao(Pagination page,Map<String ,Object> params,@Param(value="fabiao") Fabiao fabiao);
		
		//查询总的记录数
		abstract Integer fabiaoCount();
		
		//首页热门查询
		List<Fabiao> hotselect();
		
		//查询所有还款标
		List<Fabiao> getRepayByStatus();
		//查询成功发标数
		List<Fabiao> selectByStatus();
		//查询流标
		List<Fabiao> selectlb(@Param("time")String time);
		//查询满标
		List<Fabiao> selectmb(@Param("time")String time);
		//查询还款标
		List<Fabiao> selecthkb(@Param("time")String time);
		
		int updatelb(@Param("start")Integer start,@Param("fid")Integer fid);
}
