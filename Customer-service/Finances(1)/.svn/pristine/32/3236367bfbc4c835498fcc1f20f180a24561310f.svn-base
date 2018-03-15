package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.VipdetailMapper;
import com.p2p.pojo.Vipdetail;
import com.p2p.service.back.VipdetailService;
import com.p2p.util.PageInfo;
@Transactional
@Service
public class VipdetailServiceImpl implements VipdetailService{

	@Resource
	private VipdetailMapper vipdetailMapper;
	@Override
	public int addModel(Vipdetail model) {
		return vipdetailMapper.addModel(model);
	}

	@Override
	public Vipdetail getModel(Vipdetail model) {
		return vipdetailMapper.getModel(model);
	}

	@Override
	public List<Vipdetail> getAllModel() {
		return vipdetailMapper.getAllModel();
	}

	@Override
	public int update(Vipdetail model) {
		return vipdetailMapper.update(model);
	};

	@Override
	public int delete(Vipdetail model) {
		return vipdetailMapper.delete(model);
	}

	@Override
	public Vipdetail findModel(Integer id) {
		return vipdetailMapper.findModel(id);
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
				Page<Vipdetail> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<Vipdetail> list = vipdetailMapper.selectPage(page, pageInfo.getCondition());
				pageInfo.setRows(list);
				pageInfo.setTotal(page.getTotal());
	}
	@Override
	public Integer vipdetailCount() {
		return vipdetailMapper.vipdetailCount();
	}


}
