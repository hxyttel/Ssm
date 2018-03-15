package com.p2p.pojo;

import java.io.Serializable;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 提现表
 * 2017年11月14日09:37:12
 * 操作人：朱勇峰
 * 
 * */

public class Withdrawals implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("w_id")
	private Integer wid; //主键
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("w_money")
	private double wmoney; //提现金额
	
	@TableField("w_time")
	private String wtime; //提现时间
	
	@TableField("w_moneytowhere")
	private String wmoneytowhere; //金额去向

	@TableField("w_status")
	private Integer wstatus; //状态
	
	@TableField("w_fee")
	private double wfee; //手续费
	
	@TableField("w_nowMoney")
	private double wnowMoney;	//实际到账
	@TableField("w_order")
	private String worder;//订单号
	private String uiname;
	

	public Withdrawals() {
		super();
	}

	
		public double getWnowMoney() {
		return wnowMoney;
	}


	public void setWnowMoney(double wnowMoney) {
		this.wnowMoney = wnowMoney;
	}

		@Override
	public String toString() {
		return "Withdrawals [wid=" + wid + ", uid=" + uid + ", wmoney=" + wmoney + ", wtime=" + wtime
				+ ", wmoneytowhere=" + wmoneytowhere + ", wstatus=" + wstatus + ", wfee=" + wfee + ", wnowMoney="
				+ wnowMoney + ", worder=" + worder + ", uiname=" + uiname + "]";
	}


		public Withdrawals(Integer wid, Integer uid, double wmoney, String wtime, String wmoneytowhere, Integer wstatus,
			double wfee, double wnowMoney, String uiname,String worder) {
		super();
		this.wid = wid;
		this.uid = uid;
		this.wmoney = wmoney;
		this.wtime = wtime;
		this.wmoneytowhere = wmoneytowhere;
		this.wstatus = wstatus;
		this.wfee = wfee;
		this.wnowMoney = wnowMoney;
		this.uiname = uiname;
		this.worder = worder;
	}


		public Integer getWid() {
		return wid;
	}


	public void setWid(Integer wid) {
		this.wid = wid;
	}


	public Integer getUid() {
		return uid;
	}


	public void setUid(Integer uid) {
		this.uid = uid;
	}


	public double getWmoney() {
		return wmoney;
	}


	public void setWmoney(double wmoney) {
		this.wmoney = wmoney;
	}


	public String getWtime() {
		return wtime;
	}


	public void setWtime(String wtime) {
		this.wtime = wtime;
	}


	public String getWmoneytowhere() {
		return wmoneytowhere;
	}


	public void setWmoneytowhere(String wmoneytowhere) {
		this.wmoneytowhere = wmoneytowhere;
	}


	public Integer getWstatus() {
		return wstatus;
	}


	public void setWstatus(Integer wstatus) {
		this.wstatus = wstatus;
	}


	public double getWfee() {
		return wfee;
	}


	public void setWfee(double wfee) {
		this.wfee = wfee;
	}


	public String getUiname() {
		return uiname;
	}


	public void setUiname(String uiname) {
		this.uiname = uiname;
	}


	public String getWorder() {
		return worder;
	}


	public void setWorder(String worder) {
		this.worder = worder;
	}
	

}
