package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 日志表
 * 操作人:胡孝玉
 * **/
public class LogDaily implements Serializable{
	@TableField("lj_id")
	private Integer ljid;

	@TableField("lj_introduce")
	private String ljintroduce; //日志介绍
	
	@TableField("lj_time")
	private String ljtime; //日志时间
	
	public LogDaily() {
	}
	
	public LogDaily(Integer ljid, String ljintroduce, String ljtime) {
		super();
		this.ljid = ljid;
		this.ljintroduce = ljintroduce;
		this.ljtime = ljtime;
	}

	public Integer getLjid() {
		return ljid;
	}

	public void setLjid(Integer ljid) {
		this.ljid = ljid;
	}

	public String getLjintroduce() {
		return ljintroduce;
	}

	public void setLjintroduce(String ljintroduce) {
		this.ljintroduce = ljintroduce;
	}

	public String getLjtime() {
		return ljtime;
	}

	public void setLjtime(String ljtime) {
		this.ljtime = ljtime;
	}
	

}
