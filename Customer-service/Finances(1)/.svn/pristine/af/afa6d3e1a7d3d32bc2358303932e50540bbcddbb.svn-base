package com.p2p.util;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
public class ContextUtils {
	
	/**
	    * Object 转化成百分比 传如的参数必须是数字类型， 如"0.02" return 2.00%

	    *   百分比位数 参数可自行调整
	    * @param obj
	    * @return 返回百分比
	    */
	   public static String parsePercent(String obj){
		    Double  d=Double.parseDouble(obj.toString());
		    java.text.NumberFormat percentFormat =java.text.NumberFormat.getPercentInstance(); 
		    percentFormat.setMaximumFractionDigits(2); //最大小数位数
		    percentFormat.setMaximumIntegerDigits(3);//最大整数位数
		    percentFormat.setMinimumFractionDigits(2); //最小小数位数
		    percentFormat.setMinimumIntegerDigits(1);//最小整数位数
		    return percentFormat.format(d);//自动转换成百分比显示
	   }
	
	public static String dateToStr(Date date){
		SimpleDateFormat dateformat1=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String d=dateformat1.format(date);
		return d;
	}
	//double转字符串
	public static String doubleToStr(double d){
		java.text.NumberFormat nf = java.text.NumberFormat.getInstance(); 
		nf.setGroupingUsed(false); 
		return nf.format(d);
	}
	//生成订单号或文件名称�?
	public static String getFilename(){
		Date d = new Date();
		int year = d.getYear()+1900;
		int month = d.getMonth()+1;
		int day = d.getDate();
		int hour = d.getHours();
		int minute = d.getMinutes();
		int second = d.getSeconds();
		String sdate = year+"";
		if(month<10)
			sdate += "0"+month;
		else
			sdate += month;
		if(day<10){
			sdate += "0"+day;
		}else{
			sdate += day;
		}
		if(hour<10){
			sdate += "0"+hour;
		}else{
			sdate += hour;
		}
		if(minute<10){
			sdate += "0"+minute;
		}else{
			sdate += minute;
		}
		if(second<10){
			sdate += "0"+second;
		}else{
			sdate += second;
		}
		return sdate;
	}
	public static String getStr(String str){
		try {
			str = new String(str.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return str;
	}
	//生成兑换码前�?
	public static String produceExchangeCode(){
		Date d = new Date();
		int year = (d.getYear()+1900) % 100;
		int month = d.getMonth()+1;
		int day = d.getDate();
		String sdate = year+"";
		if(month<10)
			sdate += "0"+month;
		else
			sdate += month;
		if(day<10){
			sdate += "0"+day;
		}else{
			sdate += day;
		}
		return sdate;
	}
	public static String htmlspecialchars(String str) {
		if(str==null)
			return "";
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}
	
	
}
