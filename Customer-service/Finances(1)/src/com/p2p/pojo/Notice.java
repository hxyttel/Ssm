package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 公告表
 * 2017年11月14日19:38:51
 * 操作人：朱勇峰
 * */

public class Notice implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("n_id")
	private Integer nid; //主键

	@TableField("n_title")
	private String ntitle; //公告主题
	
	@TableField("n_content")
	private String ncontent; //内容
	
	@TableField("n_stype")
	private String nstype; //类型
	
	@TableField("n_time")
	private String ntime; //公告时间

	
	@TableField("n_type")
	private Integer ntype; //公告发布类型  1:网站公告 2:项目公告   3:还款公告
	
	private Noticetype noticetype;
	public Notice() {
		super();
	}
	public Notice(Integer nid, String ntitle, String ncontent, String nstype, String ntime, Integer ntype,Noticetype noticetype) {
		super();
		this.nid = nid;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nstype = nstype;
		this.ntime = ntime;
		this.ntype = ntype;
		this.noticetype = noticetype;
	}
	
	@Override
	public String toString() {
		return "Notice [nid=" + nid + ", ntitle=" + ntitle + ", ncontent=" + ncontent + ", nstype=" + nstype
				+ ", ntime=" + ntime + ", ntype=" + ntype + ", noticetype=" + noticetype + "]";
	}
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public String getNstype() {
		return nstype;
	}
	public void setNstype(String nstype) {
		this.nstype = nstype;
	}
	public String getNtime() {
		return ntime;
	}
	public void setNtime(String ntime) {
		this.ntime = ntime;
	}
	public Integer getNtype() {
		return ntype;
	}
	public void setNtype(Integer ntype) {
		this.ntype = ntype;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Noticetype getNoticetype() {
		return noticetype;
	}
	public void setNoticetype(Noticetype noticetype) {
		this.noticetype = noticetype;
	}
	
	
}
