package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 借款表
 * 2017年11月14日09:43:56
 * 操作人：朱勇峰
 * 
 * */

public class Loan implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("l_id")
	private Integer lid; //主键
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("l_money")
	private double lmoney; //借款金额
	
	@TableField("l_time")
	private String ltime; //借款时间
	
	@TableField("l_endtime")
	private String lendtime; //还款时间
	
	@TableField("l_status")
	private Integer lstatus; //状态
	
	@TableField("l_way")
	private String lway; //借款类型
	
	@TableField("l_interest")
	private double linterest; //还款利息
	
	
	private String uiname ; //用户的昵称
	
	
	public Loan() {
		super();
	}

	public Integer getLid() {
		return lid;
	}

	public void setLid(Integer lid) {
		this.lid = lid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public double getLmoney() {
		return lmoney;
	}

	public void setLmoney(double lmoney) {
		this.lmoney = lmoney;
	}

	public String getLtime() {
		return ltime;
	}

	public void setLtime(String ltime) {
		this.ltime = ltime;
	}

	public String getLendtime() {
		return lendtime;
	}

	public void setLendtime(String lendtime) {
		this.lendtime = lendtime;
	}

	public Integer getLstatus() {
		return lstatus;
	}

	public void setLstatus(Integer lstatus) {
		this.lstatus = lstatus;
	}

	public String getLway() {
		return lway;
	}

	public void setLway(String lway) {
		this.lway = lway;
	}

	public double getLinterest() {
		return linterest;
	}

	public void setLinterest(double linterest) {
		this.linterest = linterest;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	public String getUiname() {
		return uiname;
	}

	public void setUiname(String uiname) {
		this.uiname = uiname;
	}

	public Loan(Integer lid, Integer uid, double lmoney, String ltime, String lendtime, Integer lstatus, String lway,
			double linterest, String uiname) {
		super();
		this.lid = lid;
		this.uid = uid;
		this.lmoney = lmoney;
		this.ltime = ltime;
		this.lendtime = lendtime;
		this.lstatus = lstatus;
		this.lway = lway;
		this.linterest = linterest;
		this.uiname = uiname;
	}

	@Override
	public String toString() {
		return "Loan [lid=" + lid + ", uid=" + uid + ", lmoney=" + lmoney + ", ltime=" + ltime + ", lendtime="
				+ lendtime + ", lstatus=" + lstatus + ", lway=" + lway + ", linterest=" + linterest + ", uiname="
				+ uiname + "]";
	}

	
	
	
}
