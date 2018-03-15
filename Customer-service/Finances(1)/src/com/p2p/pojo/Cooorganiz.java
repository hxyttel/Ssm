package com.p2p.pojo;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 合作机构表
 * 曾林
 * 2017-11-14
 * */
public class Cooorganiz {
	@TableField("co_id")
	private Integer coid;//主键ID
	@TableField("co_name")
	private String coname;//合作名称
	@TableField("co_imgurl")
	private String coimgurl;//图片URl
	@TableField("co_linkurl")
	private String colinkurl;//链接url
	
	public Cooorganiz() {
		super();
	}
	public Cooorganiz(Integer coid, String coname, String coimgurl, String colinkurl) {
		super();
		this.coid = coid;
		this.coname = coname;
		this.coimgurl = coimgurl;
		this.colinkurl = colinkurl;
	}
	@Override
	public String toString() {
		return "cooorganiz [coid=" + coid + ", coname=" + coname + ", coimgurl=" + coimgurl + ", colinkurl="
				+ colinkurl + "]";
	}
	public Integer getCoid() {
		return coid;
	}
	public void setCoid(Integer coid) {
		this.coid = coid;
	}
	public String getConame() {
		return coname;
	}
	public void setConame(String coname) {
		this.coname = coname;
	}
	public String getCoimgurl() {
		return coimgurl;
	}
	public void setCoimgurl(String coimgurl) {
		this.coimgurl = coimgurl;
	}
	public String getColinkurl() {
		return colinkurl;
	}
	public void setColinkurl(String colinkurl) {
		this.colinkurl = colinkurl;
	}
	
}
