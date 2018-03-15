package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 操作人:汪栋才
 * 操作时间:2017-12-25
 * 操作用户通知设置的
 * */
@SuppressWarnings("serial")
public class Setupnatice implements Serializable{
	
	@TableField("us_id")
	private Integer usid; //主键id
	
	@TableField("u_id")
	private Integer uid; //用户id
	
	@TableField("us_name")
	private String usname; //用户id
	
	@TableField("us_insideStatus")
	private Integer usinsideStatus; //站内消息(1:开启   2:开启)
	
	@TableField("us_emailStatus")
	private Integer usemailStatus; //邮件通知(1:开启   2:开启)
	
	@TableField("us_messageStatus")
	private Integer usmessageStatus; //短信通知(1:开启   2:开启)
	
	public Setupnatice() {
	}


	public Setupnatice(Integer usid, Integer uid, String usname, Integer usinsideStatus, Integer usemailStatus,
			Integer usmessageStatus) {
		super();
		this.usid = usid;
		this.uid = uid;
		this.usname = usname;
		this.usinsideStatus = usinsideStatus;
		this.usemailStatus = usemailStatus;
		this.usmessageStatus = usmessageStatus;
	}


	public Integer getUsid() {
		return usid;
	}


	public void setUsid(Integer usid) {
		this.usid = usid;
	}


	public Integer getUid() {
		return uid;
	}


	public void setUid(Integer uid) {
		this.uid = uid;
	}


	public String getUsname() {
		return usname;
	}


	public void setUsname(String usname) {
		this.usname = usname;
	}


	public Integer getUsinsideStatus() {
		return usinsideStatus;
	}


	public void setUsinsideStatus(Integer usinsideStatus) {
		this.usinsideStatus = usinsideStatus;
	}


	public Integer getUsemailStatus() {
		return usemailStatus;
	}


	public void setUsemailStatus(Integer usemailStatus) {
		this.usemailStatus = usemailStatus;
	}


	public Integer getUsmessageStatus() {
		return usmessageStatus;
	}


	public void setUsmessageStatus(Integer usmessageStatus) {
		this.usmessageStatus = usmessageStatus;
	}
	
}
