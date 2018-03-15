package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.UserbackcardMapper;
import com.p2p.pojo.Userbackcard;
import com.p2p.service.front.UserbackcardService;

/**
 * 银行卡Service实现类
 * 
 * @author  lxj
 * */
@Service
@Transactional
public class UserbackcardServiceImpl implements UserbackcardService {
	
	@Resource
	private UserbackcardMapper userbackcardMapper;
	
	@Override
	public int addModel(Userbackcard model) {
		return userbackcardMapper.addModel(model);
	}

	@Override
	public Userbackcard getModel(Userbackcard model) {
		return userbackcardMapper.getModel(model);
	}

	@Override
	public List<Userbackcard> getAllModel() {
		return userbackcardMapper.getAllModel();
	}

	@Override
	public int update(Userbackcard model) {
		return userbackcardMapper.update(model);
	}

	@Override
	public int delete(Userbackcard model) {
		return userbackcardMapper.delete(model);
	}

	@Override
	public Userbackcard findModel(Integer id) {
		return userbackcardMapper.findModel(id);
	}

	@Override
	public Userbackcard seleBybanknum(Userbackcard userbackcard) {
		return userbackcardMapper.seleBybanknum(userbackcard);
	}

	@Override
	public Userbackcard selectBackcard(Userbackcard str) {
		// TODO Auto-generated method stub
		return userbackcardMapper.selectBackcard(str);
	}

	@Override
	public void updatenum(Userbackcard userbackcard) {
		userbackcardMapper.updatenum(userbackcard);
	}

}
