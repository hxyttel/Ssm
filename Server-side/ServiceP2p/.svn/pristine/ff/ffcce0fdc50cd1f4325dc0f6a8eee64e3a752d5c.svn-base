package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 自动还款表
 * 2017年11月16日09:24:45
 * 操作人：zyf
 * 
 * */

public class Repayment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("r_id")
	private Integer rid;//主键id
	
	@TableField("r_suid")
	private Integer rsuid;//还款用户id
		
	@TableField("r_moeny")
	private double rmoeny;//还款金额
	
	@TableField("r_handmoney")
	private double rhandmoney;//手续费
	
	@TableField("r_time")
	private String rtime;//还款时间
	
	@TableField("r_state")
	private Integer rstate;//还款状态（1：还款中 2：还款成功 3：还款逾期）
	
	@TableField("r_order")
	private String rorder;//还款订单号
	
	private String rsuname;
	
	private Users user;

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public Integer getRsuid() {
		return rsuid;
	}

	public void setRsuid(Integer rsuid) {
		this.rsuid = rsuid;
	}

	public double getRmoeny() {
		return rmoeny;
	}

	public void setRmoeny(double rmoeny) {
		this.rmoeny = rmoeny;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public Integer getRstate() {
		return rstate;
	}

	public void setRstate(Integer rstate) {
		this.rstate = rstate;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Repayment() {
		super();
	}

	public String getRsuname() {
		return rsuname;
	}

	public void setRsuname(String rsuname) {
		this.rsuname = rsuname;
	}

	public String getRorder() {
		return rorder;
	}

	public void setRorder(String rorder) {
		this.rorder = rorder;
	}

	
	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Repayment(Integer rid, Integer rsuid, double rmoeny, double rhandmoney, String rtime, Integer rstate,
			String rorder, String rsuname, Users user) {
		super();
		this.rid = rid;
		this.rsuid = rsuid;
		this.rmoeny = rmoeny;
		this.rhandmoney = rhandmoney;
		this.rtime = rtime;
		this.rstate = rstate;
		this.rorder = rorder;
		this.rsuname = rsuname;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Repayment [rid=" + rid + ", rsuid=" + rsuid + ", rmoeny=" + rmoeny + ", rhandmoney=" + rhandmoney
				+ ", rtime=" + rtime + ", rstate=" + rstate + ", rorder=" + rorder + ", rsuname=" + rsuname + ", user="
				+ user + "]";
	}

	public double getRhandmoney() {
		return rhandmoney;
	}

	public void setRhandmoney(double rhandmoney) {
		this.rhandmoney = rhandmoney;
	}

}
