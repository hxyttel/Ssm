package com.p2p.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

import com.baomidou.mybatisplus.annotations.TableField;

public class Uservouch implements Serializable{

	/**
	 * 代金卷表
	 * 2017-12-18-10点07分
	 * 操作人：宋泰伟
	 */
	private static final long serialVersionUID = 1L;

	@TableField("uv_id")
	private Integer uvid; //主键
	
	@TableField("uv_day")
	private Integer uvday; //过期天数
	
	@TableField("uv_money")
	private double uvmoney; //代金卷金额
	
	@TableField("uv_image")
	private String uvimage; //代金卷图片介绍
	
	@TableField("uv_startDate")
	private String uvstartDate; //代金卷开始时间
	
	@TableField("uv_endDate")
	private String uvendDate; //代金卷结束时间
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("u_condition")
	private BigDecimal ucondition; //大于这个值才可使用此红包
	
	@TableField("u_strat")
	private Integer ustrat; //状态(0未使用 1:已使用)
	
	
	private String uiname;



	public Uservouch() {

	}



	public Uservouch(Integer uvid, Integer uvday, double uvmoney, String uvimage, String uvstartDate, String uvendDate,
			Integer uid, String uiname) {
		super();
		this.uvid = uvid;
		this.uvday = uvday;
		this.uvmoney = uvmoney;
		this.uvimage = uvimage;
		this.uvstartDate = uvstartDate;
		this.uvendDate = uvendDate;
		this.uid = uid;
		this.uiname = uiname;
	}



	@Override
	public String toString() {
		return "Uservouch [uvid=" + uvid + ", uvday=" + uvday + ", uvmoney=" + uvmoney + ", uvimage=" + uvimage
				+ ", uvstartDate=" + uvstartDate + ", uvendDate=" + uvendDate + ", uid=" + uid + ", uiname=" + uiname
				+ "]";
	}



	public Integer getUvid() {
		return uvid;
	}



	public void setUvid(Integer uvid) {
		this.uvid = uvid;
	}



	public Integer getUvday() {
		return uvday;
	}



	public void setUvday(Integer uvday) {
		this.uvday = uvday;
	}



	public double getUvmoney() {
		return uvmoney;
	}



	public void setUvmoney(double uvmoney) {
		this.uvmoney = uvmoney;
	}



	public String getUvimage() {
		return uvimage;
	}



	public void setUvimage(String uvimage) {
		this.uvimage = uvimage;
	}



	public String getUvstartDate() {
		return uvstartDate;
	}



	public void setUvstartDate(String uvstartDate) {
		this.uvstartDate = uvstartDate;
	}



	public String getUvendDate() {
		return uvendDate;
	}



	public void setUvendDate(String uvendDate) {
		this.uvendDate = uvendDate;
	}



	public Integer getUid() {
		return uid;
	}



	public void setUid(Integer uid) {
		this.uid = uid;
	}



	public String getUiname() {
		return uiname;
	}



	public void setUiname(String uiname) {
		this.uiname = uiname;
	}



	public Integer getUstrat() {
		return ustrat;
	}


	public void setUstrat(Integer ustrat) {
		this.ustrat = ustrat;
	}



	public BigDecimal getUcondition() {
		return ucondition;
	}

	public void setUcondition(BigDecimal ucondition) {
		this.ucondition = ucondition;
	}

}
