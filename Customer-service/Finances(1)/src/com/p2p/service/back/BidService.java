package com.p2p.service.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Bid;
import com.p2p.pojo.Fabiao;
import com.p2p.util.PageInfo;

public interface BidService extends IBaseService<Integer, Bid>{
			//实现分页查询
			abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="bid") Bid bid);//实现分页
			//查询总的记录数
			abstract Integer Contactcount();
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
			
			//根据uid查询出所有投标的对象
			List<Bid> seleBidByUid(Integer uid);
}
