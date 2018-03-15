package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 认证详情表
 * 操作人:胡孝玉
 * **/
@SuppressWarnings("serial")
public class AuthebDetais implements Serializable{
	@TableField("ad_id")
	private Integer adid;
	
	@TableField("ad_introduct")
	private String adintroduct; //认证介绍
	
	@TableField("ad_time")
	private String adtime; //认证详情时间
	
	@TableField("ui_id")
	private Integer uiid; //用户详情uiid
	
	@TableField("ad_status")
	private Integer adstatus; //后台是否已读(0：未读，1：已读)
	
	@TableField("ad_stype")
	private Integer adstype; //认证类型（0：不是认证，只是通知信息  1.实名认证  2.提现认证 ）
	
	private String uiname ; //用户昵称
	
	public AuthebDetais() {
	
	}
	

	@Override
	public String toString() {
		return "AuthebDetais [adid=" + adid + ", adintroduct=" + adintroduct + ", adtime=" + adtime + ", uiid=" + uiid
				+ ", adstatus=" + adstatus + ", adstype=" + adstype + ", uiname=" + uiname + "]";
	}


	public String getUiname() {
		return uiname;
	}


	public void setUiname(String uiname) {
		this.uiname = uiname;
	}


	public AuthebDetais(Integer adid, String adintroduct, String adtime, Integer uiid, Integer adstatus,
			Integer adstype, String uiname) {
		super();
		this.adid = adid;
		this.adintroduct = adintroduct;
		this.adtime = adtime;
		this.uiid = uiid;
		this.adstatus = adstatus;
		this.adstype = adstype;
		this.uiname = uiname;
	}


	public Integer getAdid() {
		return adid;
	}

	public void setAdid(Integer adid) {
		this.adid = adid;
	}

	public String getAdintroduct() {
		return adintroduct;
	}

	public void setAdintroduct(String adintroduct) {
		this.adintroduct = adintroduct;
	}

	public String getAdtime() {
		return adtime;
	}

	public void setAdtime(String adtime) {
		this.adtime = adtime;
	}

	public Integer getUiid() {
		return uiid;
	}

	public void setUiid(Integer uiid) {
		this.uiid = uiid;
	}

	public Integer getAdstatus() {
		return adstatus;
	}

	public void setAdstatus(Integer adstatus) {
		this.adstatus = adstatus;
	}

	public Integer getAdstype() {
		return adstype;
	}

	public void setAdstype(Integer adstype) {
		this.adstype = adstype;
	}
	

}
