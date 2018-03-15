package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class MoneyDetail implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@TableField("md_id")
	private Integer mdid; //主键
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("md_money")
	private Double mdmoney; //消费余额
	
	@TableField("md_introduce")
	private String mdintroduce; //使用奖励详情
	
	@TableField("md_stype")
	private Integer mdstype; //奖励金类型（1：红包，2：代金卷）
	
	@TableField("md_time")
	private String mdtime; //使用时间
	private String mrendtime;
	public String getMrendtime() {
		return mrendtime;
	}
	public void setMrendtime(String mrendtime) {
		this.mrendtime = mrendtime;
	}
	private String uiname;
	public MoneyDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MoneyDetail(Integer mdid, Integer uid, Double mdmoney, String mdintroduce, Integer mdstype, String mdtime) {
		super();
		this.mdid = mdid;
		this.uid = uid;
		this.mdmoney = mdmoney;
		this.mdintroduce = mdintroduce;
		this.mdstype = mdstype;
		this.mdtime = mdtime;
	}
	@Override
	public String toString() {
		return "MoneyDetail [mdid=" + mdid + ", uid=" + uid + ", mdmoney=" + mdmoney + ", mdintroduce=" + mdintroduce
				+ ", mdstype=" + mdstype + ", mdtime=" + mdtime + "]";
	}
	public Integer getMdid() {
		return mdid;
	}
	public void setMdid(Integer mdid) {
		this.mdid = mdid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Double getMdmoney() {
		return mdmoney;
	}
	public void setMdmoney(Double mdmoney) {
		this.mdmoney = mdmoney;
	}
	public String getMdintroduce() {
		return mdintroduce;
	}
	public void setMdintroduce(String mdintroduce) {
		this.mdintroduce = mdintroduce;
	}
	public Integer getMdstype() {
		return mdstype;
	}
	public void setMdstype(Integer mdstype) {
		this.mdstype = mdstype;
	}
	public String getMdtime() {
		return mdtime;
	}
	public void setMdtime(String mdtime) {
		this.mdtime = mdtime;
	}
	public String getUiname() {
		return uiname;
	}
	public void setUiname(String uiname) {
		this.uiname = uiname;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
