package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class Withdrawals implements Serializable{
	@TableField("c_id")
	private Integer cid;//主键id
	@TableField("c_suid")
	private Integer csuid;//用户id
	@TableField("c_money")
	private double cmoney;//提现金额
	@TableField("c_card")
	private String ccard;//提现卡号
	@TableField("c_order")
	private String corder;//提现订单号
	@TableField("c_time")
	private String ctime;//提现时间
	@TableField("c_state")
	private Integer cstate;//提现状态
	@TableField("c_nowMoney")
	private double cnowMoney;//实际到账
	@TableField("c_poundage") 
	private double cpoundage;//提现手续费
	@TableField("c_ip")
	private String cip;//提现ip
	private Users user;
	public Withdrawals() {}
	
	@Override
	public String toString() {
		return "Withdrawals [cid=" + cid + ", csuid=" + csuid + ", cmoney=" + cmoney + ", ccard=" + ccard + ", corder="
				+ corder + ", ctime=" + ctime + ", cstate=" + cstate + ", cnowMoney=" + cnowMoney + ", cpoundage="
				+ cpoundage + ", cip=" + cip + ", user=" + user + "]";
	}

	public Withdrawals(Integer cid, Integer csuid, double cmoney, String ccard, String corder, String ctime,
			Integer cstate, double cnowMoney, double cpoundage, String cip, Users user) {
		super();
		this.cid = cid;
		this.csuid = csuid;
		this.cmoney = cmoney;
		this.ccard = ccard;
		this.corder = corder;
		this.ctime = ctime;
		this.cstate = cstate;
		this.cnowMoney = cnowMoney;
		this.cpoundage = cpoundage;
		this.cip = cip;
		this.user = user;
	}

	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getCsuid() {
		return csuid;
	}
	public void setCsuid(Integer csuid) {
		this.csuid = csuid;
	}
	public double getCmoney() {
		return cmoney;
	}
	public void setCmoney(double cmoney) {
		this.cmoney = cmoney;
	}
	public String getCcard() {
		return ccard;
	}
	public void setCcard(String ccard) {
		this.ccard = ccard;
	}
	public String getCorder() {
		return corder;
	}
	public void setCorder(String corder) {
		this.corder = corder;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public Integer getCstate() {
		return cstate;
	}
	public void setCstate(Integer cstate) {
		this.cstate = cstate;
	}
	public double getCnowMoney() {
		return cnowMoney;
	}
	public void setCnowMoney(double cnowMoney) {
		this.cnowMoney = cnowMoney;
	}
	public double getCpoundage() {
		return cpoundage;
	}
	public void setCpoundage(double cpoundage) {
		this.cpoundage = cpoundage;
	}
	public String getCip() {
		return cip;
	}
	public void setCip(String cip) {
		this.cip = cip;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	
}
