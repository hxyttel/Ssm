package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.Bid;
import com.p2p.service.back.BidService;
import com.p2p.util.PageInfo;

/**
 * 操作人：饶磊
 * 操作时间：2018/1/6
 * 操作投标表
 * */
@Controller
@RequestMapping("/back/admin")
public class BidController {
	@Resource(name="bidServiceImpl")
	private BidService bidService;
	
	//查询
	@RequestMapping("pageBid")
	@ResponseBody
	public PageInfo pageBid(Integer page,Integer rows,Bid bid) {
		Integer pageSize =0;
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		bidService.selectPage(pageInfo, bid);
		pageInfo.setTotal(pageInfo.getTotal());
		return pageInfo;
	}
	
	
	//增加
	@RequestMapping("insertBid")
	@ResponseBody
	public int insertBid(Bid bid) {
		int count = bidService.addModel(bid);
		return count;
	}
	
	
	//修改
	@RequestMapping("updateBid")
	@ResponseBody
	public int updateBid(Bid bid) {
		int count = bidService.update(bid);
		return count;
	}
	
	
	//删除
	@RequestMapping("deleteBid")
	@ResponseBody
	public int deleteBid(String ids) {
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length; i++) {
			String bidid = idStr[i];
			Bid bid = new Bid();
			bid.setBid(Integer.valueOf(bidid));
			count = bidService.delete(bid);
		}
		return count;
	}
}
