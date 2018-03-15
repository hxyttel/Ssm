package com.p2p.pojo;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 新闻聚焦表
 * 饶磊
 * 2018.1.19
 * */
public class Newsfocus {
	
	@TableField("nf_id")
	private Integer nfid;//主键id
	
	@TableField("nf_title")
	private String nftitle;//标题
	
	@TableField("nf_content")
	private String nfcontent;//内容
	
	@TableField("nf_image")
	private String nfimage;//图片URL
	
	@TableField("nf_time")
	private String nftime;//时间

	public Newsfocus(Integer nfid, String nftitle, String nfcontent, String nfimage, String nftime) {
		super();
		this.nfid = nfid;
		this.nftitle = nftitle;
		this.nfcontent = nfcontent;
		this.nfimage = nfimage;
		this.nftime = nftime;
	}

	public Newsfocus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getNfid() {
		return nfid;
	}

	public void setNfid(Integer nfid) {
		this.nfid = nfid;
	}

	public String getNftitle() {
		return nftitle;
	}

	public void setNftitle(String nftitle) {
		this.nftitle = nftitle;
	}

	public String getNfcontent() {
		return nfcontent;
	}

	public void setNfcontent(String nfcontent) {
		this.nfcontent = nfcontent;
	}

	public String getNfimage() {
		return nfimage;
	}

	public void setNfimage(String nfimage) {
		this.nfimage = nfimage;
	}

	public String getNftime() {
		return nftime;
	}

	public void setNftime(String nftime) {
		this.nftime = nftime;
	}

	@Override
	public String toString() {
		return "Newsfocus [nfid=" + nfid + ", nftitle=" + nftitle + ", nfcontent=" + nfcontent + ", nfimage=" + nfimage
				+ ", nftime=" + nftime + "]";
	}
	
	
}
