package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 公告类型表
 * 2017-11-14
 * 操作人:宋泰伟
 * */
public class Noticetype implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@TableField("nt_id")
	private Integer ntid; //主键
	
	@TableField("e_id")
	private Integer eid; //发布人id
	
	@TableField("nt_email")
	private String ntemail; //邮箱通知状态
	
	@TableField("nt_news")
	private String ntnews; //短信通知状态
	
	private Employe employe;
	public Noticetype() {
	}

	public Noticetype(Integer ntid, Integer eid, String ntemail, String ntnews,Employe employe) {
		super();
		this.ntid = ntid;
		this.eid = eid;
		this.ntemail = ntemail;
		this.ntnews = ntnews;
		this.employe = employe;
	}

	public Integer getNtid() {
		return ntid;
	}

	public void setNtid(Integer ntid) {
		this.ntid = ntid;
	}

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getNtemail() {
		return ntemail;
	}

	public void setNtemail(String ntemail) {
		this.ntemail = ntemail;
	}

	public String getNtnews() {
		return ntnews;
	}

	public void setNtnews(String ntnews) {
		this.ntnews = ntnews;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Employe getEmploye() {
		return employe;
	}

	public void setEmploye(Employe employe) {
		this.employe = employe;
	}

	@Override
	public String toString() {
		return "Noticetype [ntid=" + ntid + ", eid=" + eid + ", ntemail=" + ntemail + ", ntnews=" + ntnews
				+ ", employe=" + employe + "]";
	}

	
}
