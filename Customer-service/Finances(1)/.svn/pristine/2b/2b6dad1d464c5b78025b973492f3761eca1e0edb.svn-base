package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class About implements Serializable{

	/**
	 * 关于我们表
	 * 2017-12-18-09点59分
	 * 操作人：宋泰伟
	 */
	private static final long serialVersionUID = 1L;
	
	@TableField("ab_id")
	private Integer abid; //主键
	
	@TableField("ab_name")
	private String abname; //昵称
	
	@TableField("ab_image")
	private String abimage; //图片
	
	@TableField("ab_introduce")
	private String abintroduce; //介绍
	
	@TableField("ab_remark")
	private String abremark; //备注

	public Integer getAbid() {
		return abid;
	}

	@Override
	public String toString() {
		return "About [abid=" + abid + ", abname=" + abname + ", abimage=" + abimage + ", abintroduce=" + abintroduce
				+ ", abremark=" + abremark + "]";
	}

	public About() {
		
	}

	public About(Integer abid, String abname, String abimage, String abintroduce, String abremark) {
		super();
		this.abid = abid;
		this.abname = abname;
		this.abimage = abimage;
		this.abintroduce = abintroduce;
		this.abremark = abremark;
	}

	public void setAbid(Integer abid) {
		this.abid = abid;
	}

	public String getAbname() {
		return abname;
	}

	public void setAbname(String abname) {
		this.abname = abname;
	}

	public String getAbimage() {
		return abimage;
	}

	public void setAbimage(String abimage) {
		this.abimage = abimage;
	}

	public String getAbintroduce() {
		return abintroduce;
	}

	public void setAbintroduce(String abintroduce) {
		this.abintroduce = abintroduce;
	}

	public String getAbremark() {
		return abremark;
	}

	public void setAbremark(String abremark) {
		this.abremark = abremark;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
