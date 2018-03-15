package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 轮播图表
 * 2017-11-14
 * 操作人:宋泰伟
 * */
public class Indexpic implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@TableField("ip_id")
	private Integer ipid; //主键
	
	@TableField("ip_name")
	private String ipname; //名称
	
	@TableField("ip_imagee")
	private String ipimage; //代表图

	@TableField("ip_url")
	private String ipurl; //图片链接

	public Indexpic() {
	}

	public Indexpic(Integer ipid, String ipname, String ipimage, String ipurl) {
		super();
		this.ipid = ipid;
		this.ipname = ipname;
		this.ipimage = ipimage;
		this.ipurl = ipurl;
	}

	public Integer getIpid() {
		return ipid;
	}

	public void setIpid(Integer ipid) {
		this.ipid = ipid;
	}

	public String getIpname() {
		return ipname;
	}

	public void setIpname(String ipname) {
		this.ipname = ipname;
	}

	public String getIpimage() {
		return ipimage;
	}

	public void setIpimage(String ipimage) {
		this.ipimage = ipimage;
	}

	public String getIpurl() {
		return ipurl;
	}

	public void setIpurl(String ipurl) {
		this.ipurl = ipurl;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Indexpic [ipid=" + ipid + ", ipname=" + ipname + ", ipimage=" + ipimage + ", ipurl=" + ipurl + "]";
	}

}
