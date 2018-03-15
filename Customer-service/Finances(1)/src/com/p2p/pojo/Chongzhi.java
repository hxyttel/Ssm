package com.p2p.pojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Chongzhi implements Serializable{
	
	private Integer chsuid; //用户id
	private Double chmoney; //充值金额
	private String chorder; //充值订单号
	private Integer chstate;//充值状态
	private String chtime;//充值时间
	private String chbankid; //充值卡号id
	
	
	public Chongzhi() {
	
	}

	public Chongzhi(Integer chsuid, Double chmoney, String chorder, Integer chstate, String chtime, String chbankid) {
		super();
		this.chsuid = chsuid;
		this.chmoney = chmoney;
		this.chorder = chorder;
		this.chstate = chstate;
		this.chtime = chtime;
		this.chbankid = chbankid;
	}


	public String getChbankid() {
		return chbankid;
	}




	public void setChbankid(String chbankid) {
		this.chbankid = chbankid;
	}




	public Integer getChsuid() {
		return chsuid;
	}

	public void setChsuid(Integer chsuid) {
		this.chsuid = chsuid;
	}

	public Double getChmoney() {
		return chmoney;
	}

	public void setChmoney(Double chmoney) {
		this.chmoney = chmoney;
	}

	public String getChorder() {
		return chorder;
	}

	public void setChorder(String chorder) {
		this.chorder = chorder;
	}

	public Integer getChstate() {
		return chstate;
	}

	public void setChstate(Integer chstate) {
		this.chstate = chstate;
	}

	public String getChtime() {
		return chtime;
	}

	public void setChtime(String chtime) {
		this.chtime = chtime;
	}




	@Override
	public String toString() {
		return "Chongzhi [chsuid=" + chsuid + ", chmoney=" + chmoney + ", chorder=" + chorder + ", chstate=" + chstate
				+ ", chtime=" + chtime + ", chbankid=" + chbankid + "]";
	}
	
	
	

	

	
	

}
