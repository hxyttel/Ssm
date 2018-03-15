package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 角色表
 * 操作人:刘小杰
 * 2017-11-14
 * */
@SuppressWarnings("serial")
public class Role implements Serializable{
	@TableField("re_id")
	private Integer reid;  //主键id
	
	@TableField("pt_id")
	private String ptid;  //权限树id
	
	@TableField("re_name")
	private String rename;  //职位名称
	
	@TableField("re_remark")
	private String reremark;  //职位说明
	
	@TableField("re_status")
	private Integer restatus;  //角色状态
	
	//配置一对一
	private Employe emp;
	
	public Role() {
		
	}

	public Role(Integer reid, String ptid, String rename, String reremark, Integer restatus, Employe emp) {
		super();
		this.reid = reid;
		this.ptid = ptid;
		this.rename = rename;
		this.reremark = reremark;
		this.restatus = restatus;
		this.emp = emp;
	}



	public Integer getReid() {
		return reid;
	}

	public void setReid(Integer reid) {
		this.reid = reid;
	}

	public String getPtid() {
		return ptid;
	}

	public void setPtid(String ptid) {
		this.ptid = ptid;
	}

	public String getRename() {
		return rename;
	}

	public void setRename(String rename) {
		this.rename = rename;
	}

	public String getReremark() {
		return reremark;
	}

	public void setReremark(String reremark) {
		this.reremark = reremark;
	}

	public Integer getRestatus() {
		return restatus;
	}

	public void setRestatus(Integer restatus) {
		this.restatus = restatus;
	}

	public Employe getEmp() {
		return emp;
	}

	public void setEmp(Employe emp) {
		this.emp = emp;
	}

	@Override
	public String toString() {
		return "Role [reid=" + reid + ", ptid=" + ptid + ", rename=" + rename + ", reremark=" + reremark + ", restatus="
				+ restatus + ", emp=" + emp + "]";
	}

	
	
	
	
}
