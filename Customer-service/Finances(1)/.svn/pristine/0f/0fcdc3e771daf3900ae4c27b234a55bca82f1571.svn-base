package com.p2p.pojo;

/**
 * 发标表
 * 操作人：邱雪云
 * 操作时间：2018-01-16
 * */

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class FabiaoP2p implements Serializable{
	private Integer fssuid;	//用户id	
	private String fstitle;	//标题号
	private String fsorder;	//标订单号
	private double fsmoney;	//投标总金额
	private String fstime;	//投标截止时间
	private Integer fsstate;//标的状态
	private String fsip;
	private Integer fsstyle;//还款类型：1：自动还款 2：手动还款
	private String fshktime;//还款截止时间
	private double fsroe;	//收益率 
	
	private Users user;
	public FabiaoP2p() {}
	
	

	public FabiaoP2p(Integer fssuid, String fstitle, String fsorder, double fsmoney, String fstime, Integer fsstate,
			String fsip, Integer fsstyle, String fshktime, double fsroe, Users user) {
		super();
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
		return "FabiaoP2p [fssuid=" + fssuid + ", fstitle=" + fstitle + ", fsorder=" + fsorder + ", fsmoney=" + fsmoney
				+ ", fstime=" + fstime + ", fsstate=" + fsstate + ", fsip=" + fsip + ", fsstyle=" + fsstyle
				+ ", fshktime=" + fshktime + ", fsroe=" + fsroe + ", user=" + user + "]";
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
