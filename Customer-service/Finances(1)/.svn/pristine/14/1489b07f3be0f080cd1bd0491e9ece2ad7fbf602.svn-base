package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 银行表
 * 2017年11月14日09:29:51
 * 操作人：朱勇峰
 * 
 * */

public class Userbackcard implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("ub_id")
	private Integer ubid; //主键
	
	@TableField("ui_id")
	private Integer uiid; //用户基本信息id
	
	@TableField("ub_backcardnum")
	private String ubbackcardnum; //银行卡号
	
	@TableField("ub_placeback")
	private String ubplaceback; //所属银行
	
	@TableField("ub_bindtime")
	private String ubbindtime; //绑卡时间
	
	@TableField("ub_status")
	private Integer ubstatus; //状态
	
	@TableField("ub_money")
	private Double ubmoney;  //银行卡余额

	public Userbackcard(Integer ubid, Integer uiid, String ubbackcardnum, String ubplaceback, String ubbindtime,
			Integer ubstatus,Double ubmoney) {
		super();
		this.ubid = ubid;
		this.uiid = uiid;
		this.ubbackcardnum = ubbackcardnum;
		this.ubplaceback = ubplaceback;
		this.ubbindtime = ubbindtime;
		this.ubstatus = ubstatus;
		this.ubmoney = ubmoney;
	}

	public Userbackcard() {
		super();
	}

	public Integer getUbid() {
		return ubid;
	}

	public void setUbid(Integer ubid) {
		this.ubid = ubid;
	}

	public Integer getUiid() {
		return uiid;
	}

	public void setUiid(Integer uiid) {
		this.uiid = uiid;
	}

	public String getUbbindtime() {
		return ubbindtime;
	}

	public void setUbbindtime(String ubbindtime) {
		this.ubbindtime = ubbindtime;
	}

	public Double getUbmoney() {
		return ubmoney;
	}

	public void setUbmoney(Double ubmoney) {
		this.ubmoney = ubmoney;
	}

	public String getUbbackcardnum() {
		return ubbackcardnum;
	}

	public void setUbbackcardnum(String ubbackcardnum) {
		this.ubbackcardnum = ubbackcardnum;
	}

	public String getUbplaceback() {
		return ubplaceback;
	}

	public void setUbplaceback(String ubplaceback) {
		this.ubplaceback = ubplaceback;
	}

	public Integer getUbstatus() {
		return ubstatus;
	}

	public void setUbstatus(Integer ubstatus) {
		this.ubstatus = ubstatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Userbackcard [ubid=" + ubid + ", uiid=" + uiid + ", ubbackcardnum=" + ubbackcardnum + ", ubplaceback="
				+ ubplaceback + ", ubbindtime=" + ubbindtime + ", ubstatus=" + ubstatus + ", ubmoney=" + ubmoney + "]";
	}

}
