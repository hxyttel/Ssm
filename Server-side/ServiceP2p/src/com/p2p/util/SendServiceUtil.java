package com.p2p.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import com.fasterxml.jackson.databind.ObjectMapper;

public class SendServiceUtil {
	//发送
	public static int list(Object obj,String address) throws Exception {
		int count = 0;
		//StringBuffer sendStr = new StringBuffer();
		ObjectMapper m = new ObjectMapper();  
		String sendStr = m.writeValueAsString(obj);  
		
		//sendStr.append("测试数据");
		BufferedReader reader = null;
		try {  
	        String strMessage = "";  
	        StringBuffer buffer = new StringBuffer();  
	        // 接报文的地址  
	        URL uploadServlet = new URL("http://"+address+"");  
	        HttpURLConnection servletConnection = (HttpURLConnection) uploadServlet.openConnection();  
	        // 设置连接参数  
	        servletConnection.setRequestMethod("GET");  
	        servletConnection.setDoOutput(true);  
	        servletConnection.setDoInput(true);  
	        servletConnection.setAllowUserInteraction(true);  
	        // 开启流，写入XML数据  
	        OutputStream output = servletConnection.getOutputStream();  
	        System.out.println("发送的报文：");  
	        System.out.println(sendStr);  
	        output.write(sendStr.getBytes());  
	        output.flush();  
	        output.close();  
	        
	        // 获取返回的数据  
	        InputStream inputStream = servletConnection.getInputStream();  
	        reader = new BufferedReader(new InputStreamReader(inputStream));  
	        while ((strMessage = reader.readLine()) != null) {  
	           buffer.append(strMessage);  
	        }  
	        String msg = buffer.toString();
	        System.out.println("接收返回值:" + msg);
	        
	        //msg返回的值  1:开通成功,2:开通失败
	        count = Integer.valueOf(msg);
	    } catch (Exception e) {  
	        e.printStackTrace();
	    } finally {  
	        if (reader != null) {  
	           reader.close();  
	        }  
	    }  
		return count;  //返回的有三个值,只有当count=1的时开通成功
	}
}
