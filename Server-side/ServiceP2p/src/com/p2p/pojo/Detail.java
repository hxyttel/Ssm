package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class Detail implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("d_id")
	private Integer did;//主键id
	
	@TableField("d_suid")
	private Integer dsuid;//用户id
	
	@TableField("d_money")
	private double dmoney;//金额
	
	@TableField("d_time")
	private String dtime;//交易时间
	
	@TableField("d_type")
	private String dtype;//明细类型
	
	@TableField("d_state")
	private Integer dstate;//交易状态
	
	@TableField("d_order")
	private String dorder;//订单号
	
	@TableField("d_ip")
	private String dip;//交易ip

	private Users user;
	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Integer getDsuid() {
		return dsuid;
	}

	public void setDsuid(Integer dsuid) {
		this.dsuid = dsuid;
	}

	public double getDmoney() {
		return dmoney;
	}

	public void setDmoney(double dmoney) {
		this.dmoney = dmoney;
	}

	public String getDtime() {
		return dtime;
	}

	public void setDtime(String dtime) {
		this.dtime = dtime;
	}

	public String getDtype() {
		return dtype;
	}

	public void setDtype(String dtype) {
		this.dtype = dtype;
	}

	public Integer getDstate() {
		return dstate;
	}

	public void setDstate(Integer dstate) {
		this.dstate = dstate;
	}

	public String getDorder() {
		return dorder;
	}

	public void setDorder(String dorder) {
		this.dorder = dorder;
	}

	public String getDip() {
		return dip;
	}

	public void setDip(String dip) {
		this.dip = dip;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Detail(Users user,Integer did, Integer dsuid, double dmoney, String dtime, String dtype, Integer dstate, String dorder,
			String dip) {
		super();
		this.user=user;
		this.did = did;
		this.dsuid = dsuid;
		this.dmoney = dmoney;
		this.dtime = dtime;
		this.dtype = dtype;
		this.dstate = dstate;
		this.dorder = dorder;
		this.dip = dip;
	}

	public Detail() {
		super();
	}

	@Override
	public String toString() {
		return "Detail [user=" + user + ",[did=" + did + ", dsuid=" + dsuid + ", dmoney=" + dmoney + ", dtime=" + dtime + ", dtype="
				+ dtype + ", dstate=" + dstate + ", dorder=" + dorder + ", dip=" + dip + "]";
	}

	
	

}
