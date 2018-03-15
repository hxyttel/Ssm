package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 操作人:汪栋才
 * 操作时间:2017-12-25
 * 操作发送验证码的第三方短信接口
 * */
@SuppressWarnings("serial")
public class SendMsg implements Serializable{
	@TableField("msgid")
	private Integer msgid; //主键
	
	@TableField("username")
	private String username; //用户名
	
	@TableField("password")
	private String password; //密码

	@TableField("method")
	private String method; //接口地址地址
	
	@TableField("isuser")
	private Integer isuser; //是否使用(1：使用   2：未使用)
	
	public SendMsg() {
	}

	public SendMsg(Integer msgid, String username, String password, String method, Integer isuser) {
		super();
		this.msgid = msgid;
		this.username = username;
		this.password = password;
		this.method = method;
		this.isuser = isuser;
	}

	public Integer getMsgid() {
		return msgid;
	}

	public void setMsgid(Integer msgid) {
		this.msgid = msgid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public Integer getIsuser() {
		return isuser;
	}

	public void setIsuser(Integer isuser) {
		this.isuser = isuser;
	}
	
}
