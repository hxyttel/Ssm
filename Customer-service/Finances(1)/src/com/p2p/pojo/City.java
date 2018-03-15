package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 城市表
 * 2017年11月14日20:50:49
 * 操作人：胡孝玉
 * 
 * */
public class City implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("cy_id")
	private Integer cyid; //主键id
	
	@TableField("cy_name")
	private String cyname; //城市名
	
	@TableField("pv_id")
	private Integer pvid; //省份表id

	
	public City() {
		super();
	}

	public City(Integer cyid, String cyname, Integer pvid) {
		super();
		this.cyid = cyid;
		this.cyname = cyname;
		this.pvid = pvid;
	}

	@Override
	public String toString() {
		return "City [cyid=" + cyid + ", cyname=" + cyname + ", pvid=" + pvid + "]";
	}

	public Integer getCyid() {
		return cyid;
	}

	public void setCyid(Integer cyid) {
		this.cyid = cyid;
	}

	public String getCyname() {
		return cyname;
	}

	public void setCyname(String cyname) {
		this.cyname = cyname;
	}

	public Integer getPvid() {
		return pvid;
	}

	public void setPvid(Integer pvid) {
		this.pvid = pvid;
	}

	
}
