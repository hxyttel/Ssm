package com.yzf.quartz;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TaskQuartz {
	public void taskOne() {
		System.out.println("定时任务一");
	}
	public void taskTwo() {
		System.out.println("定时任务二");
	}
	public static void main(String[] args) throws ParseException {
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 Date d1 = df.parse("2004-03-28 13:31:40");
		    Date d2 = df.parse("2004-03-26 13:31:40");
		    long diff = d1.getTime() - d2.getTime();
		    System.out.println(diff);
	}
}
