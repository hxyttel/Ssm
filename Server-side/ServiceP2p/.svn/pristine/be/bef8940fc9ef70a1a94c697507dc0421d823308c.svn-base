package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class Stopmoney implements Serializable{

	@TableField("sm_id")
	private Integer smid;	//主键id
	
	@TableField("sm_suid")
	private Integer smsuid;	//用户id
	
	@TableField("sm_type")
	private String smtype;	//冻结标类型
	
	@TableField("sm_order")
	private String smorder;	//冻结标的订单号
	
	@TableField("sm_money")
	private double smmoney;	//冻结金额
	
	@TableField("sm_state")
	private Integer smstate;//状态
	
	private String smsuname;//用户名
	
	private Users user;
	
	public Stopmoney() {
		super();
	}

	public Stopmoney(Integer smid, Integer smsuid, String smtype, String smorder, double smmoney, Integer smstate,
			String smsuname, Users user) {
		super();
		this.smid = smid;
		this.smsuid = smsuid;
		this.smtype = smtype;
		this.smorder = smorder;
		this.smmoney = smmoney;
		this.smstate = smstate;
		this.smsuname = smsuname;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Stopmoney [smid=" + smid + ", smsuid=" + smsuid + ", smtype=" + smtype + ", smorder=" + smorder
				+ ", smmoney=" + smmoney + ", smstate=" + smstate + ", smsuname=" + smsuname + ", user=" + user + "]";
	}

	public Integer getSmid() {
		return smid;
	}

	public void setSmid(Integer smid) {
		this.smid = smid;
	}

	public Integer getSmsuid() {
		return smsuid;
	}

	public void setSmsuid(Integer smsuid) {
		this.smsuid = smsuid;
	}

	public String getSmtype() {
		return smtype;
	}

	public void setSmtype(String smtype) {
		this.smtype = smtype;
	}

	public String getSmorder() {
		return smorder;
	}

	public void setSmorder(String smorder) {
		this.smorder = smorder;
	}

	public double getSmmoney() {
		return smmoney;
	}

	public void setSmmoney(double smmoney) {
		this.smmoney = smmoney;
	}

	public Integer getSmstate() {
		return smstate;
	}

	public void setSmstate(Integer smstate) {
		this.smstate = smstate;
	}

	public String getSmsuname() {
		return smsuname;
	}

	public void setSmsuname(String smsuname) {
		this.smsuname = smsuname;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	
	
}
