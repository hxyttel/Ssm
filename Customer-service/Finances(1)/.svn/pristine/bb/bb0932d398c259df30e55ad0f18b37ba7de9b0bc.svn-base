package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 * 收益表
 * 2018年1月18日10:53:49
 * 操作人：胡孝玉
 * */
@SuppressWarnings("serial")
public class Profit implements Serializable{

	@TableId("pf_id")
	private Integer pfid; //收益表id
	
	@TableField("u_id")
	private Integer uid; //用户表id
	
	@TableField("pf_money")
	private Double pfmoney ; //收益金额
	
	@TableField("pf_moneywhere")
	private String pfmoneywhere; //收益来源
	
	@TableField("pf_time")
	private String pftime; //收益时间
	
	public Profit() {
	}


	public Profit(Integer pfid, Integer uid, Double pfmoney, String pfmoneywhere, String pftime) {
		super();
		this.pfid = pfid;
		this.uid = uid;
		this.pfmoney = pfmoney;
		this.pfmoneywhere = pfmoneywhere;
		this.pftime = pftime;
	}


	@Override
	public String toString() {
		return "Profit [pfid=" + pfid + ", uid=" + uid + ", pfmoney=" + pfmoney + ", pfmoneywhere=" + pfmoneywhere
				+ ", pftime=" + pftime + "]";
	}


	public Integer getPfid() {
		return pfid;
	}

	public void setPfid(Integer pfid) {
		this.pfid = pfid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Double getPfmoney() {
		return pfmoney;
	}

	public void setPfmoney(Double pfmoney) {
		this.pfmoney = pfmoney;
	}

	public String getPfmoneywhere() {
		return pfmoneywhere;
	}

	public void setPfmoneywhere(String pfmoneywhere) {
		this.pfmoneywhere = pfmoneywhere;
	}

	public String getPftime() {
		return pftime;
	}

	public void setPftime(String pftime) {
		this.pftime = pftime;
	}


	

}
