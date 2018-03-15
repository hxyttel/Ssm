package com.p2p.pojo;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 操作人:汪栋才
 * 操作时间:2017-12-25
 * 对应messagebenas表(把所有通知推送统统放在数据库)
 * */
public class MessageUtil implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@TableField("id")
	private Integer id;
	
	@TableField("msg_key")
	private String msgkey;

	@TableField("msg_value")
	private String msgvalue;

	public MessageUtil() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMsgkey() {
		return msgkey;
	}

	public void setMsgkey(String msgkey) {
		this.msgkey = msgkey;
	}

	public String getMsgvalue() {
		return msgvalue;
	}

	public void setMsgvalue(String msgvalue) {
		this.msgvalue = msgvalue;
	}

	public MessageUtil(Integer id, String msgkey, String msgvalue) {
		super();
		this.id = id;
		this.msgkey = msgkey;
		this.msgvalue = msgvalue;
	}
	
}
