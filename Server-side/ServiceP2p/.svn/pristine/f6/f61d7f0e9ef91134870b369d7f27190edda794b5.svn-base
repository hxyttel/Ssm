package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 用户表
 * 2017年11月16日08:07:40
 * 操作人：zyf
 * */


public class Users implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("su_id")
	private Integer suid;//主键id
	
	private Integer id;	//前台传递的suid
	
	@TableField("su_username")
	private String suusername; //用户名
	
	@TableField("su_name")
	private String suname; //真实姓名
	
	@TableField("su_phone")
	private String suphone; //手机号
	
	@TableField("su_card")
	private String sucard; //身份证
	
	@TableField("su_email")
	private String suemail; //邮箱

	@TableField("su_money")
	private double sumoney; //账户余额
	
	@TableField("su_canmoney")
	private double sucanmoney;//账号可用余额
	
	@TableField("su_stopmoney")
	private double sustopmoney;//账号冻结资金
	
	@TableField("su_credit")
	private Integer sucredit; //信用额度
	
	@TableField("su_ip")
	private String suip;	//ip地址



	public Integer getSuid() {
		return suid;
	}

	public void setSuid(Integer suid) {
		this.suid = suid;
	}

	public String getSuusername() {
		return suusername;
	}

	public void setSuusername(String suusername) {
		this.suusername = suusername;
	}

	public String getSuname() {
		return suname;
	}

	public void setSuname(String suname) {
		this.suname = suname;
	}

	public String getSuphone() {
		return suphone;
	}

	public void setSuphone(String suphone) {
		this.suphone = suphone;
	}

	public String getSucard() {
		return sucard;
	}

	public void setSucard(String sucard) {
		this.sucard = sucard;
	}

	public String getSuemail() {
		return suemail;
	}

	public void setSuemail(String suemail) {
		this.suemail = suemail;
	}

	public double getSumoney() {
		return sumoney;
	}

	public void setSumoney(double sumoney) {
		this.sumoney = sumoney;
	}

	public Integer getSucredit() {
		return sucredit;
	}

	public void setSucredit(Integer sucredit) {
		this.sucredit = sucredit;
	}

	public String getSuip() {
		return suip;
	}

	public void setSuip(String suip) {
		this.suip = suip;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Users() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public double getSucanmoney() {
		return sucanmoney;
	}

	public void setSucanmoney(double sucanmoney) {
		this.sucanmoney = sucanmoney;
	}

	public double getSustopmoney() {
		return sustopmoney;
	}

	public void setSustopmoney(double sustopmoney) {
		this.sustopmoney = sustopmoney;
	}

	@Override
	public String toString() {
		return "Users [suid=" + suid + ", id=" + id + ", suusername=" + suusername + ", suname=" + suname + ", suphone="
				+ suphone + ", sucard=" + sucard + ", suemail=" + suemail + ", sumoney=" + sumoney + ", sucanmoney="
				+ sucanmoney + ", sustopmoney=" + sustopmoney + ", sucredit=" + sucredit + ", suip=" + suip + "]";
	}

	public Users(Integer suid, Integer id, String suusername, String suname, String suphone, String sucard,
			String suemail, double sumoney, double sucanmoney, double sustopmoney, Integer sucredit, String suip) {
		super();
		this.suid = suid;
		this.id = id;
		this.suusername = suusername;
		this.suname = suname;
		this.suphone = suphone;
		this.sucard = sucard;
		this.suemail = suemail;
		this.sumoney = sumoney;
		this.sucanmoney = sucanmoney;
		this.sustopmoney = sustopmoney;
		this.sucredit = sucredit;
		this.suip = suip;
	}

	
}
