package com.p2p.util;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 生成唯一的数字订单号
 */
public class UUIDCode {
	 private static List<String> list = new ArrayList<String>();
	    public static String produceUID(int bits){
	        StringBuffer sb = new StringBuffer("");
	        Date currentTime = new Date();
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddhhmmss");
	        String dateString = formatter.format(currentTime);
	        sb.append(dateString);
	        for(int i = 0; i < bits; i ++){
	            sb.append((int)(Math.random()*10));
	        }
	        String tmp = sb.toString();
	        if(list.contains(tmp)){
	            produceUID(bits);
	        }else{
	            list.add(tmp);
	            return tmp;
	        }
	        return "-1";
	    }
	    public String UUIDNumber () {
	    	return UUIDCode.produceUID(10);
	    }
	   
	    /**
	     * 生成随机字母
	     * */
	    public static String MackZM() {
	    	ArrayList mylist = new ArrayList();
			for (char c = 'A'; c <= 'Z'; c++) {
				mylist.add(c);
			}
			String str = "";
			for (int i = 0; i < 4; i++) {
				int num = (int) (Math.random() * 26);
				str = str + mylist.get(num);
			}
			System.out.println(str);
			return str;
	    }
	    public static void main(String[] args) {
		 String aa = 	UUIDCode.MackZM();
		 String bb = UUIDCode.produceUID(1);
		 System.out.println(aa+bb);
	    }

	    
}
