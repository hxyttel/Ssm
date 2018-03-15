package com.p2p.pojo;

import java.io.Serializable;

/**
 * 关于权限树节点相关操作的controller
 * 2017-11-21
 * 操作人:胡孝玉
 * */
@SuppressWarnings("serial")
public class PowerTreeNode implements Serializable{
	private String id;
	private String pId;
	private String  name;
	private boolean open;//是否默认打开
	private boolean nocheck;//是否可以勾选(true不可以,false可以)
	private boolean checked;//是否默认选上
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isOpen() {
		return open;
	}
	public void setOpen(boolean open) {
		this.open = open;
	}
	public boolean isNocheck() {
		return nocheck;
	}
	public void setNocheck(boolean nocheck) {
		this.nocheck = nocheck;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	public PowerTreeNode(String id, String pId, String name, boolean open, boolean nocheck, boolean checked) {
		super();
		this.id = id;
		this.pId = pId;
		this.name = name;
		this.open = open;
		this.nocheck = nocheck;
		this.checked = checked;
	}
	@Override
	public String toString() {
		return "PowerTreeNode [id=" + id + ", pId=" + pId + ", name=" +name + ", open=" + open + ", nocheck="
				+ nocheck + ", checked=" + checked + "]";
	}
	
	
}
