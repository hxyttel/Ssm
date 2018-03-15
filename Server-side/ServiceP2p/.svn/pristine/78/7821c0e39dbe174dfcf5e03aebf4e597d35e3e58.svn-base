package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 银行卡表
 * 2017年11月16日08:28:22
 * 操作人：zyf
 * 
 * */

public class Bank implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("b_id")
	private Integer bid;//主键id
	
	@TableField("b_suid")
	private Integer bsuid;//用户id
	
	@TableField("b_code")
	private String bcode;//银行卡号
	
	@TableField("b_type")
	private String btype;//银行卡类型
	
	@TableField("b_money")
	private double bmoney;//银行卡余额
	
	@TableField("b_state")
	private String bstate;//银行卡状态
	
	@TableField("b_card")
	private String bcard;	//身份证号码
		
	@TableField("b_name")
	private String bname;	//真实姓名
	
	@TableField("b_phone")
	private String bphone;	//银行预留手机号
	
	@TableField("b_time")
	private String btime;	//申请银行卡时间
	
	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public Integer getBsuid() {
		return bsuid;
	}

	public void setBsuid(Integer bsuid) {
		this.bsuid = bsuid;
	}

	public String getBcode() {
		return bcode;
	}

	public void setBcode(String bcode) {
		this.bcode = bcode;
	}

	public String getBtype() {
		return btype;
	}

	public void setBtype(String btype) {
		this.btype = btype;
	}

	public double getBmoney() {
		return bmoney;
	}

	public void setBmoney(double bmoney) {
		this.bmoney = bmoney;
	}

	public String getBstate() {
		return bstate;
	}

	public void setBstate(String bstate) {
		this.bstate = bstate;
	}
	
	public String getBcard() {
		return bcard;
	}

	public void setBcard(String bcard) {
		this.bcard = bcard;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBphone() {
		return bphone;
	}

	public void setBphone(String bphone) {
		this.bphone = bphone;
	}

	public String getBtime() {
		return btime;
	}

	public void setBtime(String btime) {
		this.btime = btime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Bank(Integer bid, Integer bsuid, String bcode, String btype, double bmoney, String bstate, String bcard,
			String bname, String bphone, String btime) {
		super();
		this.bid = bid;
		this.bsuid = bsuid;
		this.bcode = bcode;
		this.btype = btype;
		this.bmoney = bmoney;
		this.bstate = bstate;
		this.bcard = bcard;
		this.bname = bname;
		this.bphone = bphone;
		this.btime = btime;
	}

	public Bank() {
		super();
	}

	@Override
	public String toString() {
		return "Bank [bid=" + bid + ", bsuid=" + bsuid + ", bcode=" + bcode + ", btype=" + btype + ", bmoney=" + bmoney
				+ ", bstate=" + bstate + ", bcard=" + bcard + ", bname=" + bname + ", bphone=" + bphone + ", btime="
				+ btime + "]";
	}

}
