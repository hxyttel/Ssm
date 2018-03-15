package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 提现表
 * 2017年11月16日08:33:23
 * 操作人：zyf
 * 
 * */

public class Cash implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("c_id")
	private Integer cid;//主键id
	
	@TableField("c_suid")
	private Integer csuid;//用户id
	
	@TableField("c_money")
	private double cmoney;//提现金额
	
	@TableField("c_card")
	private String ccard;//提现卡号
	
	@TableField("c_order")
	private Integer corder;//提现订单号
	
	@TableField("c_time")
	private String ctime;//提现时间
	
	@TableField("c_state")
	private String cstate;//提现状态
	
	@TableField("c_figure")
	private double cfigure;//提现后客户端余额
	
	@TableField("c_poundage")
	private double cpoundage;//手续费
	
	@TableField("c_ip")
	private String cip;		//ip地址

	private Users user;		//user对象
	

	public Cash() {
		super();
	}

	public Integer getCorder() {
		return corder;
	}

	public void setCorder(Integer corder) {
		this.corder = corder;
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

	public double getCmoeny() {
		return cmoney;
	}

	public void setCmoeny(double cmoeny) {
		this.cmoney = cmoeny;
	}

	public String getCcard() {
		return ccard;
	}

	public void setCcard(String ccard) {
		this.ccard = ccard;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public String getCstate() {
		return cstate;
	}

	public void setCstate(String cstate) {
		this.cstate = cstate;
	}

	public double getCfigure() {
		return cfigure;
	}

	public void setCfigure(double cfigure) {
		this.cfigure = cfigure;
	}

	public double getCpoundage() {
		return cpoundage;
	}

	public void setCpoundage(double cpoundage) {
		this.cpoundage = cpoundage;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getCip() {
		return cip;
	}

	public void setCip(String cip) {
		this.cip = cip;
	}

	@Override
	public String toString() {
		return "Cash [cid=" + cid + ", csuid=" + csuid + ", cmoney=" + cmoney + ", ccard=" + ccard + ", corder="
				+ corder + ", ctime=" + ctime + ", cstate=" + cstate + ", cfigure=" + cfigure + ", cpoundage="
				+ cpoundage + ", cip=" + cip + ", user=" + user + "]";
	}

	public Cash(Integer cid, Integer csuid, double cmoney, String ccard, Integer corder, String ctime, String cstate,
			double cfigure, double cpoundage, String cip, Users user) {
		super();
		this.cid = cid;
		this.csuid = csuid;
		this.cmoney = cmoney;
		this.ccard = ccard;
		this.corder = corder;
		this.ctime = ctime;
		this.cstate = cstate;
		this.cfigure = cfigure;
		this.cpoundage = cpoundage;
		this.cip = cip;
		this.user = user;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	

}
