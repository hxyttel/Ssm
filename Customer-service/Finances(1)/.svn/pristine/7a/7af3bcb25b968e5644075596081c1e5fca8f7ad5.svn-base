package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.AuthebDetaisMapper;
import com.p2p.pojo.AuthebDetais;
import com.p2p.service.back.AuthebDetaisService;

/**
 * 接受认证消息service实现类 
 * 
 * @author lxj
 * */
@Service
@Transactional
public class AuthebDetaisServiceImpl implements AuthebDetaisService {
	@Resource
	private AuthebDetaisMapper authebDetaisMpaaer;

	@Override
	public int addModel(AuthebDetais model) {
		return authebDetaisMpaaer.addModel(model);
	}

	@Override
	public AuthebDetais getModel(AuthebDetais model) {
		return authebDetaisMpaaer.getModel(model);
	}

	@Override
	public List<AuthebDetais> getAllModel() {
		return authebDetaisMpaaer.getAllModel();
	}

	@Override
	public int update(AuthebDetais model) {
		return authebDetaisMpaaer.update(model);
	}

	@Override
	public int delete(AuthebDetais model) {
		return authebDetaisMpaaer.delete(model);
	}

	@Override
	public AuthebDetais findModel(Integer id) {
		return authebDetaisMpaaer.findModel(id);
	}

}
