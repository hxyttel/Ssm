package com.p2p.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
/**
 * 配置时间处理类
 * */
public class DateUtil implements Converter<String, Date>{
	@Override  
	public Date convert(String stringDate) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try{
			simpleDateFormat.parse(stringDate);
		}catch(ParseException e){
			e.printStackTrace();
		}
		return null;
	}


}
