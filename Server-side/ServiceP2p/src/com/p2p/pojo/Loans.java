package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 放款表
 * 2017年11月16日09:28:50
 * 操作人：zyf
 * 
 * */


public class Loans implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("l_id")
	private Integer lid;//主键id
	
	@TableField("l_suid")
	private Integer lsuid;//放款用户id
	
	@TableField("l_suids")
	private Integer lsuids;//借款用户id
	
	@TableField("l_moeny")
	private double lmoney;//放款金额
	
	@TableField("l_time")
	private String ltime;//放款时间
	
	@TableField("l_state")
	private String lstate;//放款状态
	
	@TableField("l_ip")
	private String lip;//放款ip
	
	@TableField("l_ips")
	private String lips;//借款ip

	public Integer getLid() {
		return lid;
	}

	public void setLid(Integer lid) {
		this.lid = lid;
	}

	public Integer getLsuid() {
		return lsuid;
	}

	public void setLsuid(Integer lsuid) {
		this.lsuid = lsuid;
	}

	public Integer getLsuids() {
		return lsuids;
	}

	public void setLsuids(Integer lsuids) {
		this.lsuids = lsuids;
	}

	public double getLmoney() {
		return lmoney;
	}

	public void setLmoney(double lmoney) {
		this.lmoney = lmoney;
	}

	public String getLtime() {
		return ltime;
	}

	public void setLtime(String ltime) {
		this.ltime = ltime;
	}

	public String getLstate() {
		return lstate;
	}

	public void setLstate(String lstate) {
		this.lstate = lstate;
	}

	public String getLip() {
		return lip;
	}

	public void setLip(String lip) {
		this.lip = lip;
	}

	public String getLips() {
		return lips;
	}

	public void setLips(String lips) {
		this.lips = lips;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Loans(Integer lid, Integer lsuid, Integer lsuids, double lmoney, String ltime, String lstate, String lip,
			String lips) {
		super();
		this.lid = lid;
		this.lsuid = lsuid;
		this.lsuids = lsuids;
		this.lmoney = lmoney;
		this.ltime = ltime;
		this.lstate = lstate;
		this.lip = lip;
		this.lips = lips;
	}

	public Loans() {
		super();
	}

	@Override
	public String toString() {
		return "Loans [lid=" + lid + ", lsuid=" + lsuid + ", lsuids=" + lsuids + ", lmoney=" + lmoney + ", ltime="
				+ ltime + ", lstate=" + lstate + ", lip=" + lip + ", lips=" + lips + "]";
	}

	
}
