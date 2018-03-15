package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;

/**
 * 操作人:胡孝玉
 * 操作时间:2018-01-21
 *    员工任务列表
 * */
@SuppressWarnings("serial")
public class EmpTask implements Serializable{
	@TableId("et_id")
	private Integer etid;
	
	@TableField("et_name")
	private String etname; //任务名称
	
	@TableField("et_content")
	private String etcontent;//任务内容
	
	@TableField("et_starttime")
	private String etstarttime; //任务发布开始时间
	
	@TableField("et_endtime")
	private String etendtime; //发布任务结束时间
	
	@TableField("et_status")
	private Integer etstatus;  //任务发布状态(0发布  1.发布下架)
	
	public EmpTask() {
	
	}

	public EmpTask(Integer etid, String etname, String etcontent, String etstarttime, String etendtime,
			Integer etstatus) {
		super();
		this.etid = etid;
		this.etname = etname;
		this.etcontent = etcontent;
		this.etstarttime = etstarttime;
		this.etendtime = etendtime;
		this.etstatus = etstatus;
	}

	public Integer getEtid() {
		return etid;
	}

	public void setEtid(Integer etid) {
		this.etid = etid;
	}

	public String getEtname() {
		return etname;
	}

	public void setEtname(String etname) {
		this.etname = etname;
	}

	public String getEtcontent() {
		return etcontent;
	}

	public void setEtcontent(String etcontent) {
		this.etcontent = etcontent;
	}

	public String getEtstarttime() {
		return etstarttime;
	}

	public void setEtstarttime(String etstarttime) {
		this.etstarttime = etstarttime;
	}

	public String getEtendtime() {
		return etendtime;
	}

	public void setEtendtime(String etendtime) {
		this.etendtime = etendtime;
	}

	public Integer getEtstatus() {
		return etstatus;
	}

	public void setEtstatus(Integer etstatus) {
		this.etstatus = etstatus;
	}

	@Override
	public String toString() {
		return "EmpTask [etid=" + etid + ", etname=" + etname + ", etcontent=" + etcontent + ", etstarttime="
				+ etstarttime + ", etendtime=" + etendtime + ", etstatus=" + etstatus + "]";
	}
	
	

}