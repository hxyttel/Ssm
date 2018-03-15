package com.p2p.pojo;

import com.baomidou.mybatisplus.annotations.TableField;

public class Vipdetail {
	@TableField("vd_id")
	private Integer vdid;
	@TableField("vp_value")
	private Integer vpvalue;
	@TableField("vp_name")
	private String vpname;
	@TableField("u_id")
	private Integer uid;
	private String uiname;
	public String getUiname() {
		return uiname;
	}
	public void setUiname(String uiname) {
		this.uiname = uiname;
	}
	public Vipdetail(Integer vdid, Integer vpvalue, String vpname, Integer uid) {
		super();
		this.vdid = vdid;
		this.vpvalue = vpvalue;
		this.vpname = vpname;
		this.uid = uid;
	}
	public Vipdetail() {
		super();
	}
	@Override
	public String toString() {
		return "Vipdetail [vdid=" + vdid + ", vpvalue=" + vpvalue + ", vpname=" + vpname + ", uid=" + uid + "]";
	}
	public Integer getVdid() {
		return vdid;
	}
	public void setVdid(Integer vdid) {
		this.vdid = vdid;
	}
	public Integer getVpvalue() {
		return vpvalue;
	}
	public void setVpvalue(Integer vpvalue) {
		this.vpvalue = vpvalue;
	}
	public String getVpname() {
		return vpname;
	}
	public void setVpname(String vpname) {
		this.vpname = vpname;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
}
