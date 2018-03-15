package com.p2p.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 投标
 * 2017年11月14日09:49:41
 * 操作人：朱勇峰
 * 
 * */

public class Bid implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@TableField("b_id")
	private Integer bid; //主键
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("b_fid")
	private Integer bfid; //发标id
	
	@TableField("b_money")
	private BigDecimal bmoney; //投标金额
	
	@TableField("b_time")
	private String btime; //投标时间
	
	@TableField("b_endtime")
	private String bendtime; //还标时间

	private String uname;  //用户姓名
	
	private String uphone; //用户电话号码
	
	private BigDecimal broe; //收益率
	
	private String ftit; //标名
	
	
	public Bid() {
		super();
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getBfid() {
		return bfid;
	}

	public void setBfid(Integer bfid) {
		this.bfid = bfid;
	}

	public String getBtime() {
		return btime;
	}

	public void setBtime(String btime) {
		this.btime = btime;
	}

	public String getBendtime() {
		return bendtime;
	}

	public void setBendtime(String bendtime) {
		this.bendtime = bendtime;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public BigDecimal getBmoney() {
		return bmoney;
	}

	public void setBmoney(BigDecimal bmoney) {
		this.bmoney = bmoney;
	}

	public Bid(Integer bid, Integer uid, Integer bfid, BigDecimal bmoney, String btime, String bendtime) {
		super();
		this.bid = bid;
		this.uid = uid;
		this.bfid = bfid;
		this.bmoney = bmoney;
		this.btime = btime;
		this.bendtime = bendtime;
	}

	@Override
	public String toString() {
		return "Bid [bid=" + bid + ", uid=" + uid + ", bfid=" + bfid + ", bmoney=" + bmoney + ", btime=" + btime
				+ ", bendtime=" + bendtime + "]";
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public BigDecimal getBroe() {
		return broe;
	}

	public void setBroe(BigDecimal broe) {
		this.broe = broe;
	}

	public String getFtit() {
		return ftit;
	}

	public void setFtit(String ftit) {
		this.ftit = ftit;
	}
	
}
