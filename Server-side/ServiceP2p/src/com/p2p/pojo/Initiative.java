package com.p2p.pojo;

import java.io.Serializable;

public class Initiative implements Serializable{
	
	private Integer itid;
	private String ittitle;
	private Integer itsuid;
	private double itmoney;
	private String ittime;
	private Integer itstate;
	private String itip;
	private String itorder;
	private Users user;
	public Initiative() {
		super();
	}
	
	public Initiative(Integer itid, String ittitle, Integer itsuid, double itmoney, String ittime, Integer itstate,
			String itip, String itorder, Users user) {
		super();
		this.itid = itid;
		this.ittitle = ittitle;
		this.itsuid = itsuid;
		this.itmoney = itmoney;
		this.ittime = ittime;
		this.itstate = itstate;
		this.itip = itip;
		this.itorder = itorder;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Initiative [itid=" + itid + ", ittitle=" + ittitle + ", itsuid=" + itsuid + ", itmoney=" + itmoney
				+ ", ittime=" + ittime + ", itstate=" + itstate + ", itip=" + itip + ", itorder=" + itorder + ", user="
				+ user + "]";
	}

	public Integer getItid() {
		return itid;
	}
	public void setItid(Integer itid) {
		this.itid = itid;
	}
	public String getIttitle() {
		return ittitle;
	}
	public void setIttitle(String ittitle) {
		this.ittitle = ittitle;
	}
	public Integer getItsuid() {
		return itsuid;
	}
	public void setItsuid(Integer itsuid) {
		this.itsuid = itsuid;
	}
	public double getItmoney() {
		return itmoney;
	}
	public void setItmoney(double itmoney) {
		this.itmoney = itmoney;
	}
	public String getIttime() {
		return ittime;
	}
	public void setIttime(String ittime) {
		this.ittime = ittime;
	}
	public Integer getItstate() {
		return itstate;
	}
	public void setItstate(Integer itstate) {
		this.itstate = itstate;
	}
	public String getItip() {
		return itip;
	}
	public void setItip(String itip) {
		this.itip = itip;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}

	public String getItorder() {
		return itorder;
	}

	public void setItorder(String itorder) {
		this.itorder = itorder;
	}
}
