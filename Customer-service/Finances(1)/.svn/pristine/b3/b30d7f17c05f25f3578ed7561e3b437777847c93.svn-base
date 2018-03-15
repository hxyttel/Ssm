package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.IdCardMapper;
import com.p2p.pojo.IdCard;
import com.p2p.pojo.Role;
import com.p2p.service.front.IdCardService;
import com.p2p.util.PageInfo;

/**
 * 身份证Service实现类
 * 
 * @author  lxj
 * */
@Service
@Transactional
public class IdCardServiceImpl implements IdCardService {
	@Resource
	private IdCardMapper idCardMapper;

	@Override
	public int addModel(IdCard model) {
		return idCardMapper.addModel(model);
	}

	@Override
	public IdCard getModel(IdCard model) {
		return idCardMapper.getModel(model);
	}

	@Override
	public List<IdCard> getAllModel() {
		return idCardMapper.getAllModel();
	}

	@Override
	public int update(IdCard model) {
		return idCardMapper.update(model);
	}

	@Override
	public int delete(IdCard model) {
		return idCardMapper.delete(model);
	}

	@Override
	public IdCard findModel(Integer id) {
		return idCardMapper.findModel(id);
	}

	//实现后台分页及模糊查询
	public void selectPage(PageInfo pageInfo, IdCard idcard) {
		//传入一个分页bean pageInfo
		Page<IdCard> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<IdCard> list = idCardMapper.selectPage(page, pageInfo.getCondition(),idcard);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer allConuntIdcard(IdCard idcard) {
		return idCardMapper.allConuntIdcard(idcard);
	}

}
