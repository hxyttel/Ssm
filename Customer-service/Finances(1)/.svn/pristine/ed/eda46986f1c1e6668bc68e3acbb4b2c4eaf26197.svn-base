package com.p2p.util;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.joda.time.DateTime;
import org.joda.time.Months;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

/**
 * 操作人:汪栋才
 * 操作时间:2017-01-08
 * 计算收益率
 * */
public class YieldUtil {
	/**
	 * @param startTime
	 * 				 还款开始时间
	 * @param endTime
	 * 			还款结束时间
	 * @param syl
	 * 			利率
	 * @param money
	 * 			钱
	 * @param type
	 * 			类型
	 * @return 收益的钱
	 * */
	public static BigDecimal getYield(String startTime,String endTime,double syl,int money,String type) {
		 DateTimeFormatter formatter = DateTimeFormat.forPattern("yyyy-MM-dd");
		  SimpleDateFormat fo = new SimpleDateFormat("yyyy-MM-dd");
		  Date date1 =null,da =null;
		try {
			date1 = fo.parse(startTime);
			da = fo.parse(endTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		 
		  String dateString = fo.format(date1);
		  String dateString2 = fo.format(da);
		  DateTime start = formatter.parseDateTime(dateString);
	      DateTime end = formatter.parseDateTime(dateString2);
	      int months = Months.monthsBetween(start, end).getMonths();
	      BigDecimal d1TobigDe = null;
	      double count;
	      if(months>0) {
	    	  //取投资万元收益
	    	  count = Description.getPrincipalInterestCount(money,syl,months);  
	    	  //5舍6入,2.355变成2.35,如果是5则向下舍
	    	  d1TobigDe = new BigDecimal(count).setScale(2,BigDecimal.ROUND_HALF_DOWN);  
	      }else {
	    	  //天标不做任何操作
	    	  d1TobigDe = new BigDecimal("0.00");
	      }
	      return d1TobigDe;
	}
	
}
