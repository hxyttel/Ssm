package com.p2p.pojo;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 视频表
 * 曾林
 * 2017-11-14
 * */
public class Video {
	@TableField("v_id")
	private	Integer vid;//主键ID
	@TableField("v_name")
	private String vname;//视频名称
	@TableField("v_imgurl")
	private String vimgurl;//图片URL
	@TableField("v_vurl")
	private	String vvurl;//视频URL
	public Video() {
		super();
	}
	public Video(Integer vid, String vname, String vimgurl, String vvurl) {
		super();
		this.vid = vid;
		this.vname = vname;
		this.vimgurl = vimgurl;
		this.vvurl = vvurl;
	}
	@Override
	public String toString() {
		return "Video [vid=" + vid + ", vname=" + vname + ", vimgurl=" + vimgurl + ", vvurl=" + vvurl + "]";
	}
	public Integer getVid() {
		return vid;
	}
	public void setVid(Integer vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVimgurl() {
		return vimgurl;
	}
	public void setVimgurl(String vimgurl) {
		this.vimgurl = vimgurl;
	}
	public String getVvurl() {
		return vvurl;
	}
	public void setVvurl(String vvurl) {
		this.vvurl = vvurl;
	}
	
}
