package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Bid;
import com.p2p.pojo.Fabiao;

/**
 * 关于投标的后台操作
 * 饶磊
 * 2018-1-5
 * */
public interface BidMapper extends IBaseDao<Integer, Bid>{
			//实现分页查询
			List<Bid> selectPage(Pagination page,Map<String ,Object> params,@Param(value="bid") Bid bid);
			//查询总的记录数
			abstract Integer contactcount();
			//查询投标情况
			List<Bid> selectCount(@Param("fid")Integer fid);
			
			String getMaxStartTime();  //获取到最大的开始时间
			String getMinStartTime();  //获取到最小的开始时间
			
			List<String> getMoneyByTime(String time); //根据时间模糊查询  金额
			
			
			/** 
			 * 使用注解方式传入多个参数，用户产品分页， 根据标id查询
			 * @param page 
			 * @param 标id 
			 * @return startPos},#{pageSize}  
			 */  
			public List<Bid> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize")Integer  pageSize,@Param(value="fid")String fid);  
			  
			/** 
			 * 取得产品数量信息，
			 * @return 
			 */  
			public long getProductsCount(@Param(value="fid")String fid);  

			
			/**
			 * 根据对象查询出有关的对象
			 * */
			List<Bid> getBidlist(Bid bid);

			
			List<Bid> selectBid(@Param("id")Integer id);
			
			//根据uid查询出所有投标的对象
			List<Bid> seleBidByUid(Integer uid);

		
}
