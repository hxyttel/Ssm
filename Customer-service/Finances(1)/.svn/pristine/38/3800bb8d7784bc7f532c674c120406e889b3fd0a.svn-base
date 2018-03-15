package com.p2p.service.impl.front;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.IUserMapper;
import com.p2p.pojo.Role;
import com.p2p.pojo.User;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Withdrawals;
import com.p2p.service.front.IUserService;
import com.p2p.util.PageInfo;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 前台用户的Service实现类
 * */
@Transactional
@Service
public class IUserServiceImpl implements IUserService{
	@Resource
	private IUserMapper iUserMapper;

	@Override
	public int addModel(User user) {
		return iUserMapper.addModel(user);
	}

	@Override
	public User getModel(User user) {
		return iUserMapper.getModel(user);
	}

	@Override
	public List<User> getAllModel() {
		return iUserMapper.getAllModel();
	}

	@Override
	public int update(User user) {
		return iUserMapper.update(user);
	}

	@Override
	public int delete(User user) {
		return iUserMapper.delete(user);
	}

	@Override
	public User findModel(Integer id) {
		return iUserMapper.findModel(id);
	}

	@Override
	public User userLoing(String username, String password) {
		return iUserMapper.userLoing(username, password);
	}

	@Override
	public User sletUserOinvite(String orderinvite) {
		return iUserMapper.sletUserOinvite(orderinvite);
	}

	@Override
	public void selectPage(PageInfo pageInfo, User user) {
		//传入一个分页bean pageInfo
				Page<User> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<User> list = iUserMapper.selectPage(page, pageInfo.getCondition(),user);
				pageInfo.setRows(list);
				pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer userCount() {
		return iUserMapper.userCount();
	}

	@Override
	public Integer updatePwd(String uphone, String upassword) {
		return iUserMapper.updatePwd(uphone, upassword);
	}

	@Override
	public List<User> seleUserByUinvite(String uinvite) {
		return iUserMapper.seleUserByUinvite(uinvite);
	}


}
