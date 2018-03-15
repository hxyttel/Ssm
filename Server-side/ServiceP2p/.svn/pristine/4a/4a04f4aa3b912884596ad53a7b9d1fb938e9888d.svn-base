package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 主动投标
 * 2017年11月16日09:11:06
 * 操作人：zyf
 * 
 * */

public class InitiativeTender implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("it_id")
	private Integer itid;//主键id
	
	@TableField("it_suid")
	private Integer itsuid;//用户id
	
	@TableField("it_moeny")
	private double itmoeny;//投标金额
	
	@TableField("it_time")
	private String ittime;//投标时间
	
	@TableField("it_type")
	private String ittype;//投标类型
	
	@TableField("it_state")
	private String itstate;//投标状态

	@TableField("it_ip")
	private String itip;//ip地址

	public InitiativeTender(Integer itid, Integer itsuid, double itmoeny, String ittime, String ittype, String itstate,
			String itip) {
		super();
		this.itid = itid;
		this.itsuid = itsuid;
		this.itmoeny = itmoeny;
		this.ittime = ittime;
		this.ittype = ittype;
		this.itstate = itstate;
		this.itip = itip;
	}

	public InitiativeTender() {
		super();
	}

	public Integer getItid() {
		return itid;
	}

	public void setItid(Integer itid) {
		this.itid = itid;
	}

	public Integer getItsuid() {
		return itsuid;
	}

	public void setItsuid(Integer itsuid) {
		this.itsuid = itsuid;
	}

	public double getItmoeny() {
		return itmoeny;
	}

	public void setItmoeny(double itmoeny) {
		this.itmoeny = itmoeny;
	}

	public String getIttime() {
		return ittime;
	}

	public void setIttime(String ittime) {
		this.ittime = ittime;
	}

	public String getIttype() {
		return ittype;
	}

	public void setIttype(String ittype) {
		this.ittype = ittype;
	}

	public String getItstate() {
		return itstate;
	}

	public void setItstate(String itstate) {
		this.itstate = itstate;
	}

	public String getItip() {
		return itip;
	}

	public void setItip(String itip) {
		this.itip = itip;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "InitiativeTender [itid=" + itid + ", itsuid=" + itsuid + ", itmoeny=" + itmoeny + ", ittime=" + ittime
				+ ", ittype=" + ittype + ", itstate=" + itstate + ", itip=" + itip + "]";
	}
	
	
}
