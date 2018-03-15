package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

public class Userinfo implements Serializable{


/**
 * 用户表基本信息表
 * 操作人:周俣帆
 * 2017-11-14
 * */
	private static final long serialVersionUID = 1L;
	
	@TableField("ui_id")
	private Integer uiid;//主键id
	
	@TableField("u_id")
	private Integer uid;//用户表id
	
	@TableField("ui_headImg")
	private String uiheadImg;  //用户头像
	
	@TableField("ui_name")
	private String uiname;//昵称
	
	@TableField("ui_sex")
	private String uisex;//性别
	
	@TableField("ui_birthday")
	private String uibirthday;//生日日期
	
	@TableField("pv_id")
	private Integer pvid;//省份id
	
	@TableField("cy_id")
	private Integer cyid;//城市id
	
	@TableField("ae_id")
	private Integer aeid;//地区id
	
	@TableField("ui_dealpwd")
	private String uidealpwd;//交易密码
	
	@TableField("ui_email")
	private String uiemail;//邮箱
	
	@TableField("ui_emailstatus")
	private Integer uiemailstatus;//邮箱状态(0未审核  1待审核  2已审核)
	
	@TableField("ui_openstatus")
	private Integer uiopenstatus;//开通托管账户状态(默认0：未开户，1：开户)
	
	/**
	 * 二级对象(对应Userinfo用户基本信息基本类)
	 * */
	private User user;
	/**
	 * 二级对象(对应IdCard身份证类)
	 * */
	private IdCard idCard;
	/**
	 * 二级对象(对应Userbackcard银行卡表)
	 * */
	private Userbackcard userbackcard;
	
	public Userinfo() {
		
	}

	public Userinfo(Integer uiid, Integer uid, String uiheadImg, String uiname, String uisex, String uibirthday,
			Integer pvid, Integer cyid, Integer aeid, String uidealpwd, String uiemail,Integer uiemailstatus, Integer uiopenstatus, User user,IdCard idCard,Userbackcard userbackcard) {
		super();
		this.uiid = uiid;
		this.uid = uid;
		this.uiheadImg = uiheadImg;
		this.uiname = uiname;
		this.uisex = uisex;
		this.uibirthday = uibirthday;
		this.pvid = pvid;
		this.cyid = cyid;
		this.aeid = aeid;
		this.uidealpwd = uidealpwd;
		this.uiemail = uiemail;
		this.uiemailstatus = uiemailstatus;
		this.uiopenstatus = uiopenstatus;
		this.user = user;
		this.idCard = idCard;
		this.userbackcard = userbackcard;
	}

	public Integer getUiid() {
		return uiid;
	}

	public void setUiid(Integer uiid) {
		this.uiid = uiid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUiname() {
		return uiname;
	}

	public void setUiname(String uiname) {
		this.uiname = uiname;
	}

	public String getUisex() {
		return uisex;
	}

	public void setUisex(String uisex) {
		this.uisex = uisex;
	}

	public String getUibirthday() {
		return uibirthday;
	}

	public void setUibirthday(String uibirthday) {
		this.uibirthday = uibirthday;
	}

	public Integer getPvid() {
		return pvid;
	}

	public void setPvid(Integer pvid) {
		this.pvid = pvid;
	}

	public Integer getCyid() {
		return cyid;
	}

	public void setCyid(Integer cyid) {
		this.cyid = cyid;
	}

	public Integer getAeid() {
		return aeid;
	}

	public void setAeid(Integer aeid) {
		this.aeid = aeid;
	}

	public String getUidealpwd() {
		return uidealpwd;
	}

	public void setUidealpwd(String uidealpwd) {
		this.uidealpwd = uidealpwd;
	}

	public String getUiemail() {
		return uiemail;
	}

	public void setUiemail(String uiemail) {
		this.uiemail = uiemail;
	}

	public Integer getUiemailstatus() {
		return uiemailstatus;
	}

	public void setUiemailstatus(Integer uiemailstatus) {
		this.uiemailstatus = uiemailstatus;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public IdCard getIdCard() {
		return idCard;
	}

	public void setIdCard(IdCard idCard) {
		this.idCard = idCard;
	}

	public Userbackcard getUserbackcard() {
		return userbackcard;
	}

	public void setUserbackcard(Userbackcard userbackcard) {
		this.userbackcard = userbackcard;
	}

	public Integer getUiopenstatus() {
		return uiopenstatus;
	}

	public void setUiopenstatus(Integer uiopenstatus) {
		this.uiopenstatus = uiopenstatus;
	}

	public String getUiheadImg() {
		return uiheadImg;
	}

	public void setUiheadImg(String uiheadImg) {
		this.uiheadImg = uiheadImg;
	}

	@Override
	public String toString() {
		return "Userinfo [uiid=" + uiid + ", uid=" + uid + ", uiheadImg=" + uiheadImg + ", uiname=" + uiname
				+ ", uisex=" + uisex + ", uibirthday=" + uibirthday + ", pvid=" + pvid + ", cyid=" + cyid + ", aeid="
				+ aeid + ", uidealpwd=" + uidealpwd + ", uiemail=" + uiemail + ", uiemailstatus=" + uiemailstatus
				+ ", uiopenstatus=" + uiopenstatus + ", user=" + user + ", idCard=" + idCard + ", userbackcard="
				+ userbackcard + "]";
	}

}
