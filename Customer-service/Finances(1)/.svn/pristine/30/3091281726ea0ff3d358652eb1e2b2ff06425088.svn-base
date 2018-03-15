package com.p2p.controller.back;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p2p.pojo.PowerTreeNode;
import com.p2p.pojo.Powertree;
import com.p2p.pojo.Role;
import com.p2p.service.back.RoleService;
import com.p2p.util.PageInfo;

/**
 * 关于后台角色相关操作的controller
 * 2017-11-18
 * 操作人:胡孝玉
 * */
@Controller
@RequestMapping(value="/back/admin")
public class RoleController {
	@Resource(name="roleServiceImpl")
	private RoleService roleService;
	
	
	//实现分页查询
	@RequestMapping(value="seleRolelist")
	@ResponseBody
	public PageInfo  selectRoleList(Integer page, Integer rows,Role role) {
	Integer pageSize = 0;
		
		//得到总的页数
		//Integer count = roleService.roleCount();
		
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		roleService.selectPage(pageInfo,role);
		pageInfo.setTotal(pageInfo.getTotal());
		return pageInfo;
	}
	
	//实现新增
	@RequestMapping(value="insertRole")
	@ResponseBody
	public int insertRole(Role role) {
		int count = roleService.addModel(role);
		return count;
	}
	
	//修改角色信息
	@RequestMapping(value = "updateRole")
	@ResponseBody
	public  int updateRole(Role role){  
		int count = roleService.update(role);
		return count;
	}
	
	//删除
	@RequestMapping(value ="deleteRole")
	@ResponseBody
	public  int delRole(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String reid = (String) idStr[i];
			Role role = new Role();
			role.setReid(Integer.valueOf(reid));
			count =roleService.delete(role);
		}
		return count;
	}
	
	//权限树
	@RequestMapping(value="AuthTreeList")
	@ResponseBody
	public  List<PowerTreeNode> getTree(Integer reid ,Powertree ptree){
		//查询数据库中所有的权限
		List<Powertree> ptrees = new ArrayList<Powertree>();
		ptrees=roleService.selePowerTreeList();
		
		//通过角色Id查找权限
		String ptids=roleService.selePtidByreid(reid);
		List<String> ptreeList=new ArrayList<String>();
		if(ptids!=null && !ptids.isEmpty()){
			String[] ptid=ptids.split(",");
			for(String pid:ptid){
				String ptname=roleService.selePtnameByptid(Integer.parseInt(pid));
				ptreeList.add(ptname);
			}
		}
		List<PowerTreeNode> treeList= new ArrayList<PowerTreeNode>();
		for(Powertree pt : ptrees){//所有权限
			boolean check=false;
			if(ptreeList != null){
				for(String name : ptreeList){//当前用户所拥有的权限
					if(name.equals(pt.getPtname())){
						//上一层都不能nocheck,open的话，那子层肯定也不能open和check了，所以父层要设置false,如果设置true，那子层设置就没意义  
						treeList.add(new PowerTreeNode(pt.getPtid()+"",pt.getPtnode()+"",pt.getPtname(),true,false,true));
						check=true;
						break;
					}
				}
			}
			if(!check){
				treeList.add(new PowerTreeNode(pt.getPtid()+"",pt.getPtnode()+"",pt.getPtname(),false,false,false));
			}
			
		}
		//将String类型转换跟Json类型返回页面
		System.out.println(treeList);
		return treeList;
	}
	
	//修改权限树
	@RequestMapping(value="updatePower")
	@ResponseBody
	private int updatePower(String nodes,Integer reid) {
		String node="";
		String[] n=nodes.split(",");
		for(int i=0;i<n.length;i++){
			if(i==n.length-1){
				node += n[i];
			}else{
				node += n[i]+",";
			}
		}
		Role role = new Role();
		role.setPtid(node);
		role.setReid(reid);
		int count =roleService.updatePowerTree(role);
		return count;
	}
}
