package com.p2p.service.front;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.base.IBaseService;
import com.p2p.pojo.Role;
import com.p2p.pojo.User;
import com.p2p.util.PageInfo;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 前台用户的Service
 * */
public interface IUserService extends IBaseService<Integer, User>{
	User userLoing(String username,String password);
	//根据别人邀请码去查询用户
	abstract User sletUserOinvite(String orderinvite);
	//实现分页查询
	abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="role") User user);//实现分页
		
	//查询总的记录数
	abstract Integer userCount();
	
	//根据手机号修改密码
  	abstract Integer updatePwd(String uphone,String upassword);
	
  //根据自己的邀请码去找别人的邀请码
  	abstract List<User> seleUserByUinvite(String uinvite);
}
