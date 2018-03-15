package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.UserinfoMapper;
import com.p2p.pojo.Userinfo;
import com.p2p.service.front.UserInfoService;

/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 前台用户用户信息的Service实现类
 * */
@Transactional
@Service
public class UserInfoServiceImpl implements UserInfoService{
	@Resource
	private UserinfoMapper userinfoMapper;

	@Override
	public int addModel(Userinfo model) {
		return userinfoMapper.addModel(model);
	}

	@Override
	public Userinfo getModel(Userinfo model) {
		return userinfoMapper.getModel(model);
	}

	@Override
	public List<Userinfo> getAllModel() {
		return userinfoMapper.getAllModel();
	}

	@Override
	public int update(Userinfo model) {
		return userinfoMapper.update(model);
	}

	@Override
	public int delete(Userinfo model) {
		return userinfoMapper.delete(model);
	}

	@Override
	public Userinfo findModel(Integer id) {
		return userinfoMapper.findModel(id);
	}

	@Override
	public Userinfo seleUserinfoByuid(Integer uid) {
		return userinfoMapper.seleUserinfoByuid(uid);
	}

	@Override
	public Userinfo getUserinfoByuiid(Integer uiid) {
		return userinfoMapper.getUserinfoByuiid(uiid);
	}

	@Override
	public Userinfo selectByEmail(String uiemail) {
		return userinfoMapper.selectByEmail(uiemail);
	}

	
}
