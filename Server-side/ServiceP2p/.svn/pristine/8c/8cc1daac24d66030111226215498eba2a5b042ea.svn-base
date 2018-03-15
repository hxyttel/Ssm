package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 充值表
 * 2017年11月16日08:17:53
 * 操作人：zyf
 * 
 * */

public class Recharge implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("ch_id")
	private Integer chid;//主键id
	
	@TableField("ch_suid")
	private Integer chsuid;//用户id
	
	@TableField("ch_money")
	private double chmoney;//充值金额
	
	@TableField("ch_order")
	private String chorder;//订单号
	
	@TableField("ch_state")
	private Integer chstate; //充值状态
	
	@TableField("ch_time")
	private String chtime; //充值时间
	
	@TableField("ch_bankid")
	private String chbankid;//充值卡号
	
	@TableField("ch_type")
	private String chtype; //充值类型
	
	@TableField("ch_ip")
	private String chip;	//需要充值的IP地址
	
	private Users user;

	public Integer getChid() {
		return chid;
	}

	public void setChid(Integer chid) {
		this.chid = chid;
	}

	public Integer getChsuid() {
		return chsuid;
	}

	public void setChsuid(Integer chsuid) {
		this.chsuid = chsuid;
	}

	public double getChmoney() {
		return chmoney;
	}

	public void setChmoney(double chmoney) {
		this.chmoney = chmoney;
	}

	public String getChorder() {
		return chorder;
	}

	public void setChorder(String chorder) {
		this.chorder = chorder;
	}

	public Integer getChstate() {
		return chstate;
	}

	public void setChstate(Integer chstate) {
		this.chstate = chstate;
	}

	public String getChtime() {
		return chtime;
	}

	public void setChtime(String chtime) {
		this.chtime = chtime;
	}

	public String getChbankid() {
		return chbankid;
	}

	public void setChbankid(String chbankid) {
		this.chbankid = chbankid;
	}

	public String getChtype() {
		return chtype;
	}

	public void setChtype(String chtype) {
		this.chtype = chtype;
	}

	public String getChip() {
		return chip;
	}

	public void setChip(String chip) {
		this.chip = chip;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Recharge() {
		super();
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Recharge [chid=" + chid + ", chsuid=" + chsuid + ", chmoney=" + chmoney + ", chorder=" + chorder
				+ ", chstate=" + chstate + ", chtime=" + chtime + ", chbankid=" + chbankid + ", chtype=" + chtype
				+ ", chip=" + chip + ", user=" + user + "]";
	}

	public Recharge(Integer chid, Integer chsuid, double chmoney, String chorder, Integer chstate, String chtime,
			String chbankid, String chtype, String chip, Users user) {
		super();
		this.chid = chid;
		this.chsuid = chsuid;
		this.chmoney = chmoney;
		this.chorder = chorder;
		this.chstate = chstate;
		this.chtime = chtime;
		this.chbankid = chbankid;
		this.chtype = chtype;
		this.chip = chip;
		this.user = user;
	}

}
