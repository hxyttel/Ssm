package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 操作人:汪栋才
 * 操作时间:2017-1-17
 * 此实例类关于用户签到的sign表
 * */
@SuppressWarnings("serial")
public class Sing implements Serializable{
	@TableField("sigid")
	private Integer sigid; //主键id
	
	@TableField("siguser")
	private Integer siguser; //用户id
	
	@TableField("siglevel")
	private Integer siglevel; //用户等级
	
	@TableField("siggrowth")
	private String siggrowth; //成长值

	@TableField("lasttime")
	private String lasttime; //最后签到时间
	
	
	@TableField("countday")
	private Integer countday; //最后签到时间
	
	
	private Integer integral; //剩余成长值
	
	private String name;  //等级名称

	public Sing(Integer sigid, Integer siguser, Integer siglevel, String siggrowth, String lasttime) {
		super();
		this.sigid = sigid;
		this.siguser = siguser;
		this.siglevel = siglevel;
		this.siggrowth = siggrowth;
		this.lasttime = lasttime;
	}
	public Sing() {
	}
	public Integer getSigid() {
		return sigid;
	}
	public void setSigid(Integer sigid) {
		this.sigid = sigid;
	}
	public Integer getSiguser() {
		return siguser;
	}
	public void setSiguser(Integer siguser) {
		this.siguser = siguser;
	}
	public Integer getSiglevel() {
		return siglevel;
	}
	public void setSiglevel(Integer siglevel) {
		this.siglevel = siglevel;
	}
	public String getSiggrowth() {
		return siggrowth;
	}
	public void setSiggrowth(String siggrowth) {
		this.siggrowth = siggrowth;
	}
	public String getLasttime() {
		return lasttime;
	}
	public void setLasttime(String lasttime) {
		this.lasttime = lasttime;
	}
	public Integer getCountday() {
		return countday;
	}
	public void setCountday(Integer countday) {
		this.countday = countday;
	}
	public Integer getIntegral() {
		return integral;
	}
	public void setIntegral(Integer integral) {
		this.integral = integral;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
