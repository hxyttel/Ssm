package com.p2p.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

/**
 * 日期工具类
 */
public class DateUtils {

	
	// 默认日期格式
	public static final String DATE_DEFAULT_FORMAT = "yyyy-MM-dd";

	// 默认时间格式
	public static final String DATETIME_DEFAULT_FORMAT = "yyyy-MM-dd HH:mm:ss";

	public static final String TIME_DEFAULT_FORMAT = "HH:mm:ss";

	// 日期格式化
	private static DateFormat dateFormat = null;

	// 时间格式化
	private static DateFormat dateTimeFormat = null;

	private static DateFormat timeFormat = null;

	private static Calendar gregorianCalendar = null;
	
	
	
	static {
		dateFormat = new SimpleDateFormat(DATE_DEFAULT_FORMAT);
		dateTimeFormat = new SimpleDateFormat(DATETIME_DEFAULT_FORMAT);
		timeFormat = new SimpleDateFormat(TIME_DEFAULT_FORMAT);
		gregorianCalendar = new GregorianCalendar();
	}

	/**
	 * 日期格式化yyyy-MM-dd
	 * 
	 * @param date
	 * @return
	 */
	public static Date formatDate(String date, String format) {
		try {
			return new SimpleDateFormat(format).parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * @param  date
	 * 		要格式化的时间
	 * @return
	 * 		yyyy-MM-dd格式时间
	 * */
	public static String ChuSHDateFormat(String date) {
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date1 = null;
		try {
			date1 = format2.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String dateString2 = format2.format(date1);
		return dateString2;
	}
	
	/**
	 * @param  date
	 * 		要格式化的时间
	 * @return
	 * 		返回yyyy-MM-dd的Date
	 * */
	public static Date ChuDate(String date) {
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Date date1=null,date2 = null;
		try {
			date1 = format2.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String dateString2 = format2.format(date1);
		try {
			date2 = format2.parse(dateString2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date2;
	}
	
	
	/**
	 * 日期格式化yyyy-MM-dd
	 * 
	 * @param date
	 * @return
	 */
	public static String getDateFormat(Date date) {
		return dateFormat.format(date);
	}

	/**
	 * 日期格式化yyyy-MM-dd HH:mm:ss
	 * 
	 * @param date
	 * @return
	 */
	public static String getDateTimeFormat(Date date) {
		return dateTimeFormat.format(date);
	}

	/**
	 * 时间格式化
	 * 
	 * @param date
	 * @return HH:mm:ss
	 */
	public static String getTimeFormat(Date date) {
		return timeFormat.format(date);
	}

	/**
	 * 日期格式化
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDateFormat(String date) {
		try {
			return dateFormat.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 时间格式化
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDateTimeFormat(String date) {
		try {
			return dateTimeFormat.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 获取当前日期(yyyy-MM-dd)
	 * 
	 * @param date
	 * @return
	 */
	public static String getNowDate() {
		return dateFormat.format(new Date());
	}
	
	/**
	 * 获取当前日期(yyyy-MM-dd-HH-mm-ss)
	 * 
	 * @param date
	 * @return
	 */
	public static String getNowDateTime() {
		return dateTimeFormat.format(new Date());
	}

	/**
	 * 获取当前日期星期一日期
	 * 
	 * @return date
	 */
	public static Date getFirstDayOfWeek() {
		gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
		gregorianCalendar.setTime(new Date());
		gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek()); // Monday
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取当前日期星期日日期
	 * 
	 * @return date
	 */
	public static Date getLastDayOfWeek() {
		gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
		gregorianCalendar.setTime(new Date());
		gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek() + 6); // Monday
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取日期星期一日期
	 * 
	 * @param 指定日期
	 * @return date
	 */
	public static Date getFirstDayOfWeek(Date date) {
		if (date == null) {
			return null;
		}
		gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
		gregorianCalendar.setTime(date);
		gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek()); // Monday
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取日期星期一日期
	 * 
	 * @param 指定日期
	 * @return date
	 */
	public static Date getLastDayOfWeek(Date date) {
		if (date == null) {
			return null;
		}
		gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
		gregorianCalendar.setTime(date);
		gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek() + 6); // Monday
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取当前月的第一天
	 * 
	 * @return date
	 */
	public static Date getFirstDayOfMonth() {
		gregorianCalendar.setTime(new Date());
		gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取当前月的最后一天
	 * 
	 * @return
	 */
	public static Date getLastDayOfMonth() {
		gregorianCalendar.setTime(new Date());
		gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
		gregorianCalendar.add(Calendar.MONTH, 1);
		gregorianCalendar.add(Calendar.DAY_OF_MONTH, -1);
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取指定月的第一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getFirstDayOfMonth(Date date) {
		gregorianCalendar.setTime(date);
		gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取指定月的最后一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getLastDayOfMonth(Date date) {
		gregorianCalendar.setTime(date);
		gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
		gregorianCalendar.add(Calendar.MONTH, 1);
		gregorianCalendar.add(Calendar.DAY_OF_MONTH, -1);
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取日期前一天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDayBefore(Date date) {
		gregorianCalendar.setTime(date);
		int day = gregorianCalendar.get(Calendar.DATE);
		gregorianCalendar.set(Calendar.DATE, day - 1);
		return gregorianCalendar.getTime();
	}
	
	/**
	 * 获取日期前多少个月日期
	 * 
	 * @param date
	 * @return
	 */
	public static Date getmouthBefore(Date date,int mouth) {
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
        c.add(Calendar.MONTH, -mouth);
        Date datemouth = c.getTime();
       return datemouth;
		
	}
	/**
	 * 获取日期后几天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDayAfter(Date date,int addday) {
		gregorianCalendar.setTime(date);
		int day = gregorianCalendar.get(Calendar.DATE);
		gregorianCalendar.set(Calendar.DATE, day + addday);
		return gregorianCalendar.getTime();
	}
	
	/**
	 * 获取日期前几天
	 * 
	 * @param date
	 * @return
	 */
	public static Date getDayBefore(Date date,int addday) {
		gregorianCalendar.setTime(date);
		int day = gregorianCalendar.get(Calendar.DATE);
		gregorianCalendar.set(Calendar.DATE, day - 7);
		return gregorianCalendar.getTime();
	}

	/**
	 * 获取当前年
	 * 
	 * @return
	 */
	public static int getNowYear() {
		Calendar d = Calendar.getInstance();
		return d.get(Calendar.YEAR);
	}

	/**
	 * 获取当前月份
	 * 
	 * @return
	 */
	public static int getNowMonth() {
		Calendar d = Calendar.getInstance();
		return d.get(Calendar.MONTH) + 1;
	}

	/**
	 * 获取当月天数
	 * 
	 * @return
	 */
	public static int getNowMonthDay() {
		Calendar d = Calendar.getInstance();
		return d.getActualMaximum(Calendar.DATE);
	}

	/**
	 * 获取时间段的每一天
	 * 
	 * @param 开始日期
	 * @param 结算日期
	 * @return 日期列表
	 */
	public static List<Date> getEveryDay(Date startDate, Date endDate) {
		if (startDate == null || endDate == null) {
			return null;
		}
		// 格式化日期(yy-MM-dd)
		startDate = DateUtils.getDateFormat(DateUtils.getDateFormat(startDate));
		endDate = DateUtils.getDateFormat(DateUtils.getDateFormat(endDate));
		List<Date> dates = new ArrayList<Date>();
		gregorianCalendar.setTime(startDate);
		dates.add(gregorianCalendar.getTime());
		while (gregorianCalendar.getTime().compareTo(endDate) < 0) {
			// 加1天
			gregorianCalendar.add(Calendar.DAY_OF_MONTH, 1);
			dates.add(gregorianCalendar.getTime());
		}
		return dates;
	}
	
	/**
	 * 获取时间段的每一个月
	 * @throws ParseException 
	 * */
	public static List<Date> getEveryMouth(Date startDate, Date endDate) throws ParseException {
		List<Date> data = new ArrayList<Date>();
		/** Date类的格式: Sat Apr 16 13:17:29 CST 2016  
		 * 	将Date类型转换成String 
		 * */
		String start =DateFormat.getDateInstance().format(startDate);
		String end =DateFormat.getDateInstance().format(endDate);
		
		Date d1 = new SimpleDateFormat("yyyy-MM").parse(start);//定义起始日期

		Date d2 = new SimpleDateFormat("yyyy-MM").parse(end);//定义结束日期

		Calendar dd = Calendar.getInstance();//定义日期实例

		dd.setTime(d1);//设置日期起始时间
		while(dd.getTime().before(d2)){//判断是否到结束日期
		data.add(dd.getTime());
		dd.add(Calendar.MONTH,1);//进行当前日期月份加1
		}
		data.add(dd.getTime());
		return  data;
	}
		/*
		* 获取两个日期相差的月数
		* @param d1  较大的日期
		* @param d2  较小的日期
		* @return 如果d1>d2返回 月数差 否则返回0
		*/
		public static int getMonthDiff(Date d1, Date d2) {
		    Calendar c1 = Calendar.getInstance();
		    Calendar c2 = Calendar.getInstance();
		    c1.setTime(d1);
		    c2.setTime(d2);
		    if(c1.getTimeInMillis() < c2.getTimeInMillis()) return 0;
		    int year1 = c1.get(Calendar.YEAR);
		    int year2 = c2.get(Calendar.YEAR);
		    int month1 = c1.get(Calendar.MONTH);
		    int month2 = c2.get(Calendar.MONTH);
		    int day1 = c1.get(Calendar.DAY_OF_MONTH);
		    int day2 = c2.get(Calendar.DAY_OF_MONTH);
		    // 获取年的差值 假设 d1 = 2015-8-16 d2 = 2011-9-30
		    int yearInterval = year1 - year2;
		    // 如果 d1的 月-日 小于 d2的 月-日 那么 yearInterval-- 这样就得到了相差的年数
		    if(month1 < month2 || month1 == month2 && day1 < day2) yearInterval --;
		    // 获取月数差值
		    int monthInterval = (month1 + 12) - month2 ;
		    if(day1 < day2) monthInterval --;
		    monthInterval %= 12;
		    return yearInterval * 12 + monthInterval;
		}
	/**
	 * 获取提前多少个月
	 * 
	 * @param monty
	 * @return
	 */
	public static Date getFirstMonth(int monty) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH, -monty);
		return c.getTime();
	}
	
	
	/**
	 * date2比date1多的天数
	 * @param date1 
	 * @param date2
	 * @return 
	 */
	 public static int differentDays(Date date1,Date date2)
	 {
	 Calendar cal1 = Calendar.getInstance();
	 cal1.setTime(date1);
	  
	 Calendar cal2 = Calendar.getInstance();
	 cal2.setTime(date2);
	 int day1= cal1.get(Calendar.DAY_OF_YEAR);
	 int day2 = cal2.get(Calendar.DAY_OF_YEAR);
	  
	 int year1 = cal1.get(Calendar.YEAR);
	 int year2 = cal2.get(Calendar.YEAR);
	 if(year1 != year2) //同一年
	 {
	  int timeDistance = 0 ;
	  for(int i = year1 ; i < year2 ; i ++)
	  {
	  if(i%4==0 && i%100!=0 || i%400==0) { //闰年  
	  
	   timeDistance += 366;
	  }
	  else { //不是闰年
	  
	   timeDistance += 365;
	  }
	  }
	   
	  	return timeDistance + (day2-day1) ;
	 }else { //不同年
	 
		 System.out.println("判断day2 - day1 : " + (day2-day1));
		 return day2-day1;
	 	}
	 }
	
	
	public static int differentDaysByMillisecond(Date date1,Date date2){
		int days = (int) ((date2.getTime() - date1.getTime()) / (1000*3600*24));
		return days;
	}
	
	/**
	 * 获取时间段相差的天数
	 * */
	public static int getDay(Date startDate,Date endDate) {
		int day =differentDays(startDate,endDate);
		return day;
	}
	
	 public static String getLastYear() {
		 Calendar c = Calendar.getInstance();
		 	c.setTime(new Date());
	        c.add(Calendar.YEAR, -1);
	        Date y = c.getTime();
	        String year = dateFormat.format(y);
	        return year;
	 }
	
}