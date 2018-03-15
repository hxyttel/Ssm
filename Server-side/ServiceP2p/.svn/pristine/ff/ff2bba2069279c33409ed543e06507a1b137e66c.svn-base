package com.p2p.shiro;



import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.p2p.pojo.Admin;
import com.p2p.services.AdminService;



public class MyRealm extends AuthorizingRealm{

	@Resource(name="adminServiceImpl")
	private AdminService adminService;
	//用于权限
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	//用于验证
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String username=(String)token.getPrincipal();
		Admin admin=adminService.login(username);
		String credentials=admin.getApassword();
		SimpleAuthenticationInfo authenticationInfo=new SimpleAuthenticationInfo(username, credentials, ByteSource.Util.bytes(username),this.getName());
		
		return authenticationInfo;
	}

}

