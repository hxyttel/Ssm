package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class Fabiao implements Serializable{
	@TableField("fs_id")
	private Integer fsid;
	@TableField("fs_suid")
	private Integer fssuid;
	@TableField("fs_title")
	private String fstitle;
	@TableField("fs_order")
	private String fsorder;
	@TableField("fs_money")
	private double fsmoney;
	@TableField("fs_time")
	private String fstime;//投标截止时间
	@TableField("fs_state")
	private Integer fsstate;//发布状态  1募集标  2还款标  3结清标 4流标  5废标  6待审核标  7满标
	@TableField("fs_ip")
	private String fsip;
	private Integer fsstyle;//还款类型：1：自动还款 2：手动还款
	private String fshktime;//还款截止时间
	private double fsroe;	//收益率 
	
	private Users user;
	public Fabiao() {}
	
	
	public Fabiao(Integer fsid, Integer fssuid, String fstitle, String fsorder, double fsmoney, String fstime,
			Integer fsstate, String fsip, Integer fsstyle, String fshktime, double fsroe, Users user) {
		super();
		this.fsid = fsid;
		this.fssuid = fssuid;
		this.fstitle = fstitle;
		this.fsorder = fsorder;
		this.fsmoney = fsmoney;
		this.fstime = fstime;
		this.fsstate = fsstate;
		this.fsip = fsip;
		this.fsstyle = fsstyle;
		this.fshktime = fshktime;
		this.fsroe = fsroe;
		this.user = user;
	}


	@Override
	public String toString() {
		return "Fabiao [fsid=" + fsid + ", fssuid=" + fssuid + ", fstitle=" + fstitle + ", fsorder=" + fsorder
				+ ", fsmoney=" + fsmoney + ", fstime=" + fstime + ", fsstate=" + fsstate + ", fsip=" + fsip
				+ ", fsstyle=" + fsstyle + ", fshktime=" + fshktime + ", fsroe=" + fsroe + ", user=" + user + "]";
	}


	public Integer getFsid() {
		return fsid;
	}
	public void setFsid(Integer fsid) {
		this.fsid = fsid;
	}
	public Integer getFssuid() {
		return fssuid;
	}
	public void setFssuid(Integer fssuid) {
		this.fssuid = fssuid;
	}
	public String getFstitle() {
		return fstitle;
	}
	public void setFstitle(String fstitle) {
		this.fstitle = fstitle;
	}
	public String getFsorder() {
		return fsorder;
	}
	public void setFsorder(String fsorder) {
		this.fsorder = fsorder;
	}
	public double getFsmoney() {
		return fsmoney;
	}
	public void setFsmoney(double fsmoney) {
		this.fsmoney = fsmoney;
	}
	public String getFstime() {
		return fstime;
	}
	public void setFstime(String fstime) {
		this.fstime = fstime;
	}
	public Integer getFsstate() {
		return fsstate;
	}
	public void setFsstate(Integer fsstate) {
		this.fsstate = fsstate;
	}
	public String getFsip() {
		return fsip;
	}
	public void setFsip(String fsip) {
		this.fsip = fsip;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}


	public Integer getFsstyle() {
		return fsstyle;
	}


	public void setFsstyle(Integer fsstyle) {
		this.fsstyle = fsstyle;
	}


	public String getFshktime() {
		return fshktime;
	}


	public void setFshktime(String fshktime) {
		this.fshktime = fshktime;
	}


	public double getFsroe() {
		return fsroe;
	}


	public void setFsroe(double fsroe) {
		this.fsroe = fsroe;
	}
	
	
}
