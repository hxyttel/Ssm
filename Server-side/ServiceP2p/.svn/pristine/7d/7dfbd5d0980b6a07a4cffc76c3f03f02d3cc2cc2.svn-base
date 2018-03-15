package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 绑卡表
 * 2017年11月16日09:41:52
 * 操作人：zyf
 * 
 * */

public class UserBindCard implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("u_id")
	private Integer uid;//主键id
	
	@TableField("u_suid")
	private Integer usuid;//用户id
	
	@TableField("u_bankcode")
	private Integer ubankcode;//银行卡号
	
	@TableField("u_type")
	private String utype;//银行卡类型
	
	@TableField("u_time")
	private String utime;//绑卡时间
	
	@TableField("u_state")
	private String ustate;//绑卡状态
	
	@TableField("u_ip")
	private String uip;//ip地址

	public UserBindCard(Integer uid, Integer usuid, Integer ubankcode, String utype, String utime, String ustate,
			String uip) {
		super();
		this.uid = uid;
		this.usuid = usuid;
		this.ubankcode = ubankcode;
		this.utype = utype;
		this.utime = utime;
		this.ustate = ustate;
		this.uip = uip;
	}

	public UserBindCard() {
		super();
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getUsuid() {
		return usuid;
	}

	public void setUsuid(Integer usuid) {
		this.usuid = usuid;
	}

	public Integer getUbankcode() {
		return ubankcode;
	}

	public void setUbankcode(Integer ubankcode) {
		this.ubankcode = ubankcode;
	}

	public String getUtype() {
		return utype;
	}

	public void setUtype(String utype) {
		this.utype = utype;
	}

	public String getUtime() {
		return utime;
	}

	public void setUtime(String utime) {
		this.utime = utime;
	}

	public String getUstate() {
		return ustate;
	}

	public void setUstate(String ustate) {
		this.ustate = ustate;
	}

	public String getUip() {
		return uip;
	}

	public void setUip(String uip) {
		this.uip = uip;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "UserBindCard [uid=" + uid + ", usuid=" + usuid + ", ubankcode=" + ubankcode + ", utype=" + utype
				+ ", utime=" + utime + ", ustate=" + ustate + ", uip=" + uip + "]";
	}
	
	

}
