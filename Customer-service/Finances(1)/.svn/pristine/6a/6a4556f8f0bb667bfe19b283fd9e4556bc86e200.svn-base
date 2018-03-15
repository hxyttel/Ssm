package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;
/**
 * 员工表
 * 2017-11-14
 * 操作人:宋泰伟
 * */
public class Employe implements Serializable{

	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	@TableField("e_id")
	private Integer eid; //主键
	
	@TableField("re_id")
	private Integer reid; //角色id
	
	@TableField("e_enum")
	private String eenum;//员工编号
	
	@TableField("e_name")
	private String ename; //员工姓名
	
	
	@TableField("e_sex")
	private String esex; //员工性别
	
	@TableField("e_password")
	private String epassword; //员工密码
	
	@TableField("e_idcard")
	private String eidcard; //员工身份证号
	
	@TableField("e_phone")
	private String ephone; //员工手机号
	
	@TableField("e_position")
	private String eposition;//员工职位
	
	@TableField("e_email")
	private String eemail; //员工邮箱
	
	
	
	@TableField("e_status")
	private String estatus; //角色状态
	
	@TableField("e_retime")
	private String eretime; //创建时间
	
	@TableField("e_remark")
	private String eremark; //自我声明
	
	@TableField("e_image")
	private String eimage; //员工头像
	
	private Role role ;
	

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public Integer getReid() {
		return reid;
	}

	public void setReid(Integer reid) {
		this.reid = reid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEpassword() {
		return epassword;
	}

	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}

	public String getEstatus() {
		return estatus;
	}

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}

	public String getEretime() {
		return eretime;
	}

	public void setEretime(String eretime) {
		this.eretime = eretime;
	}

	public String getEremark() {
		return eremark;
	}

	public void setEremark(String eremark) {
		this.eremark = eremark;
	}

	public String getEenum() {
		return eenum;
	}

	public void setEenum(String eenum) {
		this.eenum = eenum;
	}

	public String getEsex() {
		return esex;
	}

	public void setEsex(String esex) {
		this.esex = esex;
	}

	public String getEidcard() {
		return eidcard;
	}

	public void setEidcard(String eidcard) {
		this.eidcard = eidcard;
	}

	public String getEphone() {
		return ephone;
	}

	public void setEphone(String ephone) {
		this.ephone = ephone;
	}

	public String getEposition() {
		return eposition;
	}

	public void setEposition(String eposition) {
		this.eposition = eposition;
	}

	public String getEemail() {
		return eemail;
	}

	public void setEemail(String eemail) {
		this.eemail = eemail;
	}

	/*public static long getSerialversionuid() {
		return serialVersionUID;
	}*/
	
	public Employe() {
	}
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}



	public String getEimage() {
		return eimage;
	}

	public void setEimage(String eimage) {
		this.eimage = eimage;
	}

	@Override
	public String toString() {
		return "Employe [eid=" + eid + ", reid=" + reid + ", eenum=" + eenum + ", ename=" + ename + ", esex=" + esex
				+ ", epassword=" + epassword + ", eidcard=" + eidcard + ", ephone=" + ephone + ", eposition="
				+ eposition + ", eemail=" + eemail + ", estatus=" + estatus + ", eretime=" + eretime + ", eremark="
				+ eremark + ", eimage=" + eimage + ", role=" + role + "]";
	}

	public Employe(Integer eid, Integer reid, String eenum, String ename, String esex, String epassword, String eidcard,
			String ephone, String eposition, String eemail, String estatus, String eretime, String eremark,
			String eimage, Role role) {
		super();
		this.eid = eid;
		this.reid = reid;
		this.eenum = eenum;
		this.ename = ename;
		this.esex = esex;
		this.epassword = epassword;
		this.eidcard = eidcard;
		this.ephone = ephone;
		this.eposition = eposition;
		this.eemail = eemail;
		this.estatus = estatus;
		this.eretime = eretime;
		this.eremark = eremark;
		this.eimage = eimage;
		this.role = role;
	}

	
}
