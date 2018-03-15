package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 银行卡所属类型
 * 2017年11月14日19:05:04
 * 操作人：朱勇峰
 * 
 * */


public class Banktype implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	@TableField("bs_id")
	private Integer bsid; //主键
	
	@TableField("bs_name")
	private String bsname; //类型名
	
	@TableField("bs_img")
	private String bsimg; //代表图

	public Banktype(Integer bsid, String bsname, String bsimg) {
		super();
		this.bsid = bsid;
		this.bsname = bsname;
		this.bsimg = bsimg;
	}

	public Banktype() {
		super();
	}

	public Integer getBsid() {
		return bsid;
	}

	public void setBsid(Integer bsid) {
		this.bsid = bsid;
	}

	public String getBsname() {
		return bsname;
	}

	public void setBsname(String bsname) {
		this.bsname = bsname;
	}

	public String getBsimg() {
		return bsimg;
	}

	public void setBsimg(String bsimg) {
		this.bsimg = bsimg;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Banktype [bsid=" + bsid + ", bsname=" + bsname + ", bsimg=" + bsimg + "]";
	}
	
	
	

}
