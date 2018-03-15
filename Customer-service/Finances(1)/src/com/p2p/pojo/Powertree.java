package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 权限树表
 * 2017-11-14
 * 操作人:宋泰伟
 * */
public class Powertree implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@TableField("pt_id")
	private Integer ptid; //主键
	
	@TableField("pt_name")
	private String ptname; //权限名称
	
	@TableField("pt_node")
	private Integer ptnode; //节点

	@TableField("pt_status")
	private String ptstatus; //权限状态

	public Powertree() {
	}
	
	public Powertree(Integer ptid, String ptname, Integer ptnode, String ptstatus) {
		super();
		this.ptid = ptid;
		this.ptname = ptname;
		this.ptnode = ptnode;
		this.ptstatus = ptstatus;
	}

	public Integer getPtid() {
		return ptid;
	}

	public void setPtid(Integer ptid) {
		this.ptid = ptid;
	}

	public String getPtname() {
		return ptname;
	}

	public void setPtname(String ptname) {
		this.ptname = ptname;
	}

	public Integer getPtnode() {
		return ptnode;
	}

	public void setPtnode(Integer ptnode) {
		this.ptnode = ptnode;
	}

	public String getPtstatus() {
		return ptstatus;
	}

	public void setPtstatus(String ptstatus) {
		this.ptstatus = ptstatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Powertree [ptid=" + ptid + ", ptname=" + ptname + ", ptnode=" + ptnode + ", ptstatus=" + ptstatus + "]";
	}


}
