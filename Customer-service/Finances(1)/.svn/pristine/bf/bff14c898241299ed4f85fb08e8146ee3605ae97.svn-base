package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 充值表
 * 2017年11月14日09:30:03
 * 操作人：朱勇峰
 * 
 * */

public class Recharge implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("re_id")
	private Integer reid; //主键
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("re_money")
	private double remoney;//充值金钱
	
	@TableField("re_time")
	private String retime; //充值时间
	private String uiname;
	public String getUiname() {
		return uiname;
	}
	public void setUiname(String uiname) {
		this.uiname = uiname;
	}
	public Recharge(Integer reid, Integer uid, double remoney, String retime) {
		super();
		this.reid = reid;
		this.uid = uid;
		this.remoney = remoney;
		this.retime = retime;
	}
	public Recharge() {
		super();
	}
	public Integer getReid() {
		return reid;
	}
	public void setReid(Integer reid) {
		this.reid = reid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public double getRemoney() {
		return remoney;
	}
	public void setRemoney(double remoney) {
		this.remoney = remoney;
	}
	public String getRetime() {
		return retime;
	}
	public void setRetime(String retime) {
		this.retime = retime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Recharge [reid=" + reid + ", uid=" + uid + ", remoney=" + remoney + ", retime=" + retime + "]";
	}
	
	
	
	
}
