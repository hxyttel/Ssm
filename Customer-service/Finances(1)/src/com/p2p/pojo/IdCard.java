package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 身份证表
 * 操作人:胡孝玉
 * 
 * ***/

@SuppressWarnings("serial")
public class IdCard implements Serializable{
	
	@TableField("ic_id")
	private  Integer icid;
	
	@TableField("ic_frontUrl")
	private String icfrontUrl; //身份证正面
	
	@TableField("ic_backUrl")
	private String icbackUrl; //身份证背面
	
	@TableField("ic_status")
	private Integer icstatus; //身份证状态 0未审核 1已审核
	
	@TableField("ic_starttime")
	private String icstarttime; //认证时间
	
	@TableField("ic_number")
	private String icnumber;  //身份证号
	
	@TableField("ui_id")
	private Integer uiid;  //用户信息id
	
	@TableField("ic_name")
	private String icname;  //用户真实姓名 
	
	private String uiname; //用户昵称
	
	public IdCard() {
	}

	public IdCard(Integer icid, String icfrontUrl, String icbackUrl, Integer icstatus, String icstarttime,
			String icnumber, Integer uiid, String icname, String uiname) {
		super();
		this.icid = icid;
		this.icfrontUrl = icfrontUrl;
		this.icbackUrl = icbackUrl;
		this.icstatus = icstatus;
		this.icstarttime = icstarttime;
		this.icnumber = icnumber;
		this.uiid = uiid;
		this.icname = icname;
		this.uiname = uiname;
	}

	@Override
	public String toString() {
		return "IdCard [icid=" + icid + ", icfrontUrl=" + icfrontUrl + ", icbackUrl=" + icbackUrl + ", icstatus="
				+ icstatus + ", icstarttime=" + icstarttime + ", icnumber=" + icnumber + ", uiid=" + uiid + ", icname="
				+ icname + ", uiname=" + uiname + "]";
	}

	public Integer getIcid() {
		return icid;
	}

	public void setIcid(Integer icid) {
		this.icid = icid;
	}

	public String getIcfrontUrl() {
		return icfrontUrl;
	}

	public void setIcfrontUrl(String icfrontUrl) {
		this.icfrontUrl = icfrontUrl;
	}

	public String getIcbackUrl() {
		return icbackUrl;
	}

	public void setIcbackUrl(String icbackUrl) {
		this.icbackUrl = icbackUrl;
	}

	public Integer getIcstatus() {
		return icstatus;
	}

	public void setIcstatus(Integer icstatus) {
		this.icstatus = icstatus;
	}

	public String getIcstarttime() {
		return icstarttime;
	}

	public void setIcstarttime(String icstarttime) {
		this.icstarttime = icstarttime;
	}

	public String getIcnumber() {
		return icnumber;
	}

	public void setIcnumber(String icnumber) {
		this.icnumber = icnumber;
	}

	public Integer getUiid() {
		return uiid;
	}

	public void setUiid(Integer uiid) {
		this.uiid = uiid;
	}

	public String getIcname() {
		return icname;
	}

	public void setIcname(String icname) {
		this.icname = icname;
	}

	public String getUiname() {
		return uiname;
	}

	public void setUiname(String uiname) {
		this.uiname = uiname;
	}
	
	
	
}
