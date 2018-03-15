package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 省份表
 * 2017年11月14日20:57:23
 * 操作人：胡孝玉
 * 
 * */
public class Provice implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("pv_id ")
	private Integer pvid;//主键id
	
	@TableField("pv_name")
	private String pvname; //省份名称

	public Provice() {
		super();
	}

	public Provice(Integer pvid, String pvname) {
		super();
		this.pvid = pvid;
		this.pvname = pvname;
	}

	@Override
	public String toString() {
		return "Provice [pvid=" + pvid + ", pvname=" + pvname + "]";
	}

	public Integer getPvid() {
		return pvid;
	}

	public void setPvid(Integer pvid) {
		this.pvid = pvid;
	}

	public String getPvname() {
		return pvname;
	}

	public void setPvname(String pvname) {
		this.pvname = pvname;
	}

	
}
