package com.p2p.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 用户表 user
 * 操作人:周俣帆
 * 2017-11-14
 * */
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("u_id")
	private Integer uid; //用户id
	
	
	@TableField("u_password")
	private String upassword; //用户密码

	@TableField("u_phone")
	private String uphone;  //电话号码
	
	@TableField("u_regTime")
	private String uregTime;//注册时间
	
	@TableField("u_loginTime")
	private String uloginTime;//登录时间

	@TableField("order_invite")
	private String orderinvite; //别人的邀请码
	
	
	@TableField("u_invite")
	private String uinvite; //自己邀请码
	
	@TableField("u_enable")
	private Integer uenable; //是否禁用 0 禁用/1
	
	@TableField("u_isAccountSum")
	private Integer uisAccountSum;//是否领取代金券
	
	@TableField("qr_code")
	private String qrcode;//自己的二维码
	
	@TableField("u_address")
	private String uaddress;//自己常用登入地
	
	
	@TableField("u_ip")
	private String uip;//ip
	
	@TableField("u_credit")
	private Integer ucredit;//信用额度
	
	@TableField("u_balance")
	private Double ubalance;//余额值

	@TableField("ul_id")
	private String  ulid;//成长等级id
	
	@TableField("vd_id")
	private Integer vdid;//会员积分id

	
	/**
	 * 二级对象(对应Userinfo用户基本信息基本类)
	 * */
	private Userinfo userinfo;
	
	/**
	 *一对一
	 * */
	private Userlevel userlevel;
	private Loan loan;
	private Redmoney redmoney;

	private Withdrawals withdrawals;
	
	private Uservouch uservouch;
	

	public User() {
		super();
	}


	public Integer getUid() {
		return uid;
	}


	public void setUid(Integer uid) {
		this.uid = uid;
	}


	public String getUpassword() {
		return upassword;
	}


	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}


	public String getUphone() {
		return uphone;
	}


	public void setUphone(String uphone) {
		this.uphone = uphone;
	}


	public String getUregTime() {
		return uregTime;
	}


	public void setUregTime(String uregTime) {
		this.uregTime = uregTime;
	}


	public String getUloginTime() {
		return uloginTime;
	}


	public void setUloginTime(String uloginTime) {
		this.uloginTime = uloginTime;
	}


	public String getOrderinvite() {
		return orderinvite;
	}


	public void setOrderinvite(String orderinvite) {
		this.orderinvite = orderinvite;
	}


	public String getUinvite() {
		return uinvite;
	}


	public void setUinvite(String uinvite) {
		this.uinvite = uinvite;
	}


	public Integer getUenable() {
		return uenable;
	}


	public void setUenable(Integer uenable) {
		this.uenable = uenable;
	}


	public Integer getUisAccountSum() {
		return uisAccountSum;
	}


	public void setUisAccountSum(Integer uisAccountSum) {
		this.uisAccountSum = uisAccountSum;
	}


	public String getQrcode() {
		return qrcode;
	}


	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}


	public String getUaddress() {
		return uaddress;
	}


	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}


	public String getUip() {
		return uip;
	}


	public void setUip(String uip) {
		this.uip = uip;
	}


	public Integer getUcredit() {
		return ucredit;
	}


	public void setUcredit(Integer ucredit) {
		this.ucredit = ucredit;
	}


	public Double getUbalance() {
		return ubalance;
	}


	public void setUbalance(Double ubalance) {
		this.ubalance = ubalance;
	}


	public String getUlid() {
		return ulid;
	}


	public void setUlid(String ulid) {
		this.ulid = ulid;
	}


	public Integer getVdid() {
		return vdid;
	}


	public void setVdid(Integer vdid) {
		this.vdid = vdid;
	}


	public Userinfo getUserinfo() {
		return userinfo;
	}


	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}


	public Userlevel getUserlevel() {
		return userlevel;
	}


	public void setUserlevel(Userlevel userlevel) {
		this.userlevel = userlevel;
	}


	public Redmoney getRedmoney() {
		return redmoney;
	}


	public void setRedmoney(Redmoney redmoney) {
		this.redmoney = redmoney;
	}


	public Withdrawals getWithdrawals() {
		return withdrawals;
	}


	public void setWithdrawals(Withdrawals withdrawals) {
		this.withdrawals = withdrawals;
	}


	public Loan getLoan() {
		return loan;
	}
	public Uservouch getUservouch() {
		return uservouch;
	}



	public void setLoan(Loan loan) {
		this.loan = loan;
	}




	public void setUservouch(Uservouch uservouch) {
		this.uservouch = uservouch;
	}


	public User(Integer uid, String upassword, String uphone, String uregTime, String uloginTime, String orderinvite,
			String uinvite, Integer uenable, Integer uisAccountSum, String qrcode, String uaddress, String uip,
			Integer ucredit, Double ubalance, String ulid, Integer vdid, Userinfo userinfo, Userlevel userlevel,
			Redmoney redmoney, Withdrawals withdrawals, Uservouch uservouch) {
		super();
		this.uid = uid;
		this.upassword = upassword;
		this.uphone = uphone;
		this.uregTime = uregTime;
		this.uloginTime = uloginTime;
		this.orderinvite = orderinvite;
		this.uinvite = uinvite;
		this.uenable = uenable;
		this.uisAccountSum = uisAccountSum;
		this.qrcode = qrcode;
		this.uaddress = uaddress;
		this.uip = uip;
		this.ucredit = ucredit;
		this.ubalance = ubalance;
		this.ulid = ulid;
		this.vdid = vdid;
		this.userinfo = userinfo;
		this.userlevel = userlevel;
		this.redmoney = redmoney;
		this.withdrawals = withdrawals;
		this.uservouch = uservouch;
	}

	
	
	
}
