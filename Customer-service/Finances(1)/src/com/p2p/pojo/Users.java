package com.p2p.pojo;

import java.io.Serializable;

/**
 * 服务端用户虚拟表
 * 
 * @author lxj
 * */
@SuppressWarnings("serial")
public class Users implements Serializable{
	private Integer suid;  //用户id
	private String suusername;  //昵称
	private String suname;  //用户真实姓名
	private String suphone;  //手机号
	private String sucard;  //身份证号
	private String suemail;  //邮箱
	private Double sumoney;  //账户余额
	private Integer sucredit;  //信用额度
	
	public Users() {
		super();
	}
	
	public Users(Integer suid, String suusername, String suname, String suphone, String sucard, String suemail,
			Double sumoney, Integer sucredit) {
		super();
		this.suid = suid;
		this.suusername = suusername;
		this.suname = suname;
		this.suphone = suphone;
		this.sucard = sucard;
		this.suemail = suemail;
		this.sumoney = sumoney;
		this.sucredit = sucredit;
	}

	@Override
	public String toString() {
		return "Users [suid=" + suid + ", suusername=" + suusername + ", suname=" + suname + ", suphone=" + suphone
				+ ", sucard=" + sucard + ", suemail=" + suemail + ", sumoney=" + sumoney + ", sucredit=" + sucredit
				+ "]";
	}

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

	public Double getSumoney() {
		return sumoney;
	}

	public void setSumoney(Double sumoney) {
		this.sumoney = sumoney;
	}

	public Integer getSucredit() {
		return sucredit;
	}

	public void setSucredit(Integer sucredit) {
		this.sucredit = sucredit;
	}
	
}
