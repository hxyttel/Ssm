package com.p2p.shiro;



import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.p2p.pojo.Employe;
import com.p2p.pojo.Role;
import com.p2p.service.back.EmpService;
import com.p2p.service.back.RoleService;


/**
 * shiro自定义拦截器
 * */
public class MyRealm extends AuthorizingRealm{
	@Resource(name="empServiceImpl")
	private EmpService empService;
	
	@Resource(name="roleServiceImpl")
	private RoleService roleService;
	
	//用于授权
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//得到员工姓名
		String empName = (String)principals.getPrimaryPrincipal(); 
		
		//根据用户名得到Employee对象
		Employe emp =empService.getByemployname(empName) ;
		        
		//根据角色id去查询所拥有的权限
		Integer reid = emp.getReid();
		Role role = roleService.getByereid(reid);
		List<String> roleList = new ArrayList<String>();
		List<String> permissionList = new ArrayList<String>();
		if(role!=null) {
			String ptids = roleService.selePtidByreid(role.getReid());
			String rename = role.getRename();
			if(ptids!=null && ptids!="" && !ptids.isEmpty()) {
				String ptid[] =  ptids.split(",");
				for (String pid : ptid) {
					//根据权限id去权限树查询权限名
					permissionList.add(roleService.selePtnameByptid(Integer.valueOf(pid)));
				}
				roleList.add(rename);
			}
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(); 
			//拥有角色授予
			info.addRoles(roleList);
			//拥有权限授予
			info.addStringPermissions(permissionList);
			return info;
			
		}
		else {
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(); 
			//拥有角色授予
			info.addRoles(roleList);
			//拥有权限授予
			info.addStringPermissions(permissionList);
			return info;
		}
		
	}

	
	//用于认证
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		
		String username = (String)token.getPrincipal();
		System.out.println("当前用户名："+username);
		String password2 = new String((char[])token.getCredentials());
		System.out.println("当前用户密码是："+password2);
		
		
		Employe employe = empService.getByemployname(username);
		AuthenticationInfo au = new SimpleAuthenticationInfo(username,employe.getEpassword(), ByteSource.Util.bytes("admin"),this.getName());
		
		return au;
	}
	
	public static void main(String[] args) {
        Object password = "123";
		
		Object result = new SimpleHash("MD5", password, ByteSource.Util.bytes("admin"), 1);
		
		System.out.println(result.toString());
		
	}

}

