package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.BidMapper;
import com.p2p.pojo.Bid;
import com.p2p.pojo.Fabiao;
import com.p2p.service.back.BidService;
import com.p2p.util.PageInfo;
@Transactional
@Service
public class BidServiceImpl implements BidService{
	
	@Resource
	private BidMapper bidmapper;
	
	@Override
	public int addModel(Bid model) {
		return bidmapper.addModel(model);
	}

	@Override
	public Bid getModel(Bid model) {
		return bidmapper.getModel(model);
	}

	@Override
	public List<Bid> getAllModel() {
		return bidmapper.getAllModel();
	}

	@Override
	public int update(Bid model) {
		return bidmapper.update(model);
	}

	@Override
	public int delete(Bid model) {
		return bidmapper.delete(model);
	}

	@Override
	public Bid findModel(Integer id) {
		return bidmapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo, Bid bid) {
		Page<Bid> page = new Page(pageInfo.getNowpage(),pageInfo.getPagesize());
		List<Bid> list = bidmapper.selectPage(page, pageInfo.getCondition(), bid);
		pageInfo.setRows(list);
		pageInfo.setTotal(list.size());
	}

	@Override
	public Integer Contactcount() {
		return bidmapper.contactcount();
	}

	@Override
	public List<Bid> selectCount(Integer fid) {
		return bidmapper.selectCount(fid);
	}

	@Override
	public String getMaxStartTime() {
		return bidmapper.getMaxStartTime();
	}

	@Override
	public String getMinStartTime() {
		return bidmapper.getMinStartTime();
	}

	@Override
	public List<String> getMoneyByTime(String time) {
		return bidmapper.getMoneyByTime(time);
	}

	@Override
	public List<Bid> selectProductsByPage(Integer startPos, Integer pageSize, String fid) {
		return bidmapper.selectProductsByPage(startPos, pageSize, fid);
	}

	@Override
	public long getProductsCount(String fid) {
		return bidmapper.getProductsCount(fid);
	}

	@Override
	public List<Bid> getBidlist(Bid bid) {
		return bidmapper.getBidlist(bid);
	}

	@Override
	public List<Bid> seleBidByUid(Integer uid) {
		return bidmapper.seleBidByUid(uid);
	}

}
