package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 操作人:汪栋才
 * 操作时间:2017-12-25
 * 操作发送邮箱的第三方接口
 * */
@SuppressWarnings("serial")
public class SendMail implements Serializable{
	@TableField("mailid")
	private Integer mailid; //主键
	
	@TableField("host")
	private String host; //用户名
	
	@TableField("formName")
	private String formName; //密码

	@TableField("password")
	private String password; //接口地址地址
	
	@TableField("isuser")
	private Integer isuser; //是否使用(1：使用   2：未使用)
	
	public SendMail() {
	}

	public SendMail(Integer mailid, String host, String formName, String password, Integer isuser) {
		super();
		this.mailid = mailid;
		this.host = host;
		this.formName = formName;
		this.password = password;
		this.isuser = isuser;
	}

	public Integer getMailid() {
		return mailid;
	}

	public void setMailid(Integer mailid) {
		this.mailid = mailid;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getFormName() {
		return formName;
	}

	public void setFormName(String formName) {
		this.formName = formName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getIsuser() {
		return isuser;
	}

	public void setIsuser(Integer isuser) {
		this.isuser = isuser;
	}
	
}
