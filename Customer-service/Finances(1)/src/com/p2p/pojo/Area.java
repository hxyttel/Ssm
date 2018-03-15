package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 地区表
 * 2017年11月14日21:03:06
 * 操作人：胡孝玉
 * 
 * */
@SuppressWarnings("serial")
public class Area implements Serializable{
	@TableField("ae_id")
	private Integer aeid;//主键id
	
	@TableField("cy_id")
	private Integer cyid; //城市表id
	
	@TableField("ae_name")
	private String aename; //地区名

	public Area() {
		super();
	}

	public Area(Integer aeid, Integer cyid, String aename) {
		super();
		this.aeid = aeid;
		this.cyid = cyid;
		this.aename = aename;
	}

	@Override
	public String toString() {
		return "Area [aeid=" + aeid + ", cyid=" + cyid + ", aename=" + aename + "]";
	}

	public Integer getAeid() {
		return aeid;
	}

	public void setAeid(Integer aeid) {
		this.aeid = aeid;
	}

	public Integer getCyid() {
		return cyid;
	}

	public void setCyid(Integer cyid) {
		this.cyid = cyid;
	}

	public String getAename() {
		return aename;
	}

	public void setAename(String aename) {
		this.aename = aename;
	}
}
