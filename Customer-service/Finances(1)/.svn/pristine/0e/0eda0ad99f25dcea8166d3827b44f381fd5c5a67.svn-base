package com.p2p.util;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
/**
 * 发送短信的真正实现类
 * */
public class SendMsgController {
	//用户名
	private String username;
	private String password;
	private String method;
	
	public SendMsgController(String username, String password, String method) {
		super();
		this.username = username;
		this.password = password;
		this.method = method;
	}
	public void send(String phone,String msg) throws Exception{
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod(method); 
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");//在头文件中设置转码
		NameValuePair[] data ={ 
				new NameValuePair("uid", "send"),
				new NameValuePair("uid",username),
				new NameValuePair("pwd", password),
				new NameValuePair("mobile",phone),
				new NameValuePair("content",msg)
				};
		post.setRequestBody(data);

		client.executeMethod(post);

		Header[] headers = post.getResponseHeaders();
		int statusCode = post.getStatusCode();
		System.out.println("statusCode:"+statusCode);
		for(Header h : headers)
		{
			System.out.println(h.toString());
		}
		String result = new String(post.getResponseBodyAsString().getBytes("utf-8"));

		System.out.println(result); //打印返回消息状态
		post.releaseConnection();
	}
	/**
	 * 取剩余短信数
	 * http://api.sms.cn/sms/?ac=number&uid=acgn&pwd=ec99f5e2905b462cf9e13aa35988a582
	 * */
	

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}

}
