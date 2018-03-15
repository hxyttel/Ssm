package com.p2p.controller.back;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.p2p.util.QRcode;

/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是一些文件上传或者文件下载的工具类
 * */
@Controller
public class UtilController {

	/**
	 * 生成二维码并下载
	 * */
	public static String createQRcode(String url,HttpServletRequest request,HttpServletResponse response) {
		if(url.length()==0) {
			url = "https://www.baidu.com";
		}
		//利用时间对文件名进行重名
		SimpleDateFormat df  = new SimpleDateFormat("yyyMMddHHmmssSSS");
				
		//新文件名
		String newFilename = df.format(new Date());
		//文件后缀
		String suffix = ".png";
		
		String contextPath = request.getSession().getServletContext().getRealPath("/uploadFile/");
		
		//把路径中的包括\\全部换成/
		contextPath = contextPath.replace("\\","/");
		try {
			QRcode.createQRCode(url, new File(contextPath+newFilename+suffix));
			System.out.println("解密的URL是"+QRcode.readQRCode(contextPath+newFilename+suffix));
		}catch (Exception e) {
			e.printStackTrace();
		}
		/**
		 * 这里返回文件路径
		 * */
		String pathss = "/uploadFile/"+newFilename+suffix;
		return pathss;
	}
	
	
	/**
	 * ajax文件上传
	 * */
	public static String upload(HttpServletRequest request,String fileName) throws Exception{
		MultipartHttpServletRequest msr = (MultipartHttpServletRequest)request;
		
		//拿到文件对象
		CommonsMultipartFile mf = (CommonsMultipartFile)msr.getFile(fileName);
		
		//拿到文件名称
		String exfileName = mf.getOriginalFilename();
		
		//String exfileName = fileName;
		
		//截取文件名称。取从.号开始到后面的所有名称
		String suffix =exfileName.substring(exfileName.indexOf("."));
		
		//利用时间对文件名进行重名
		SimpleDateFormat df  = new SimpleDateFormat("yyyMMddHHmmssSSS");
		
		//新文件名
		String newFilename = df.format(new Date());
		
		//拿到全局路径
		String contextPath = request.getSession().getServletContext().getRealPath("/uploadFile");
		
		//把路径中的包括\\全部换成/
		contextPath = contextPath.replace("\\","/");
		
		//上传文件
		/*File dir = new File(contextPath,newFilename+suffix);          
        if(!dir.exists()){  
            dir.mkdirs();  
        }  */
		mf.transferTo(new File(contextPath+newFilename+suffix));
		String path = "/uploadFile/"+newFilename+suffix;
		return path;
	} 
	
	/**
	 * 文件上传
	 * */
	public static String uploadFrom(HttpServletRequest request,MultipartFile file) throws Exception{
		
		//拿到文件名称
		String exfileName = file.getOriginalFilename(); 
		
		//截取文件名称。取从.号开始到后面的所有名称
		String suffix =exfileName.substring(exfileName.indexOf("."));
		
		//利用时间对文件名进行重名
		SimpleDateFormat df  = new SimpleDateFormat("yyyMMddHHmmssSSS");
		
		//新文件名
		String newFilename = df.format(new Date());
		
		//拿到全局路径
		String contextPath = request.getSession().getServletContext().getRealPath("/uploadFile");
		
		//把路径中的包括\\全部换成/
		contextPath = contextPath.replace("\\","/");
		
        File dir = new File(contextPath,newFilename+suffix);          
        if(!dir.exists()){  
            dir.mkdirs();  
        }  
        //MultipartFile自带的解析方法  
        file.transferTo(dir);  
        
      //上传文件路径
      	String path = "/uploadFile/"+newFilename+suffix;
		
		return path;
	} 
	
	
	/**
	 * 多文件上传(把所有路径拼接为,)
	 * */
	public static String uploadReNames(MultipartFile[] abimage,HttpSession session){
		String path = session.getServletContext().getRealPath("/uploadFile");
		//把路径中的包括\\全部换成/
		path = path.replace("\\","/");
        List<String> mylist = new ArrayList<String>();
     for(MultipartFile item:abimage){
        String fileName = item.getOriginalFilename();
        String fName = "";  
        String suffix = "";  
        if(fileName.indexOf(".")>=0){  
            int  indexdot =  fileName.indexOf(".");  
            suffix =  fileName.substring(indexdot);  
  
            fName = fileName.substring(0,fileName.lastIndexOf("."));  
            Date now = new Date();  
            fName = "yxry" + "_"  +now.getTime();  
            fName =  fName  + suffix;  
        }  
        File targetFile = new File(path, fName);    
        //往list中添加图片路径
        mylist.add("/uploadFile/"+fName);
        if(!targetFile.exists()){    
            targetFile.mkdirs();    
        }    
        //保存    
        try {    
        	item.transferTo(targetFile);    
        } catch (Exception e) {    
            e.printStackTrace();    
        }   
     }
     if(mylist.size()==0) {
    	 return null;
     }else {
	     StringBuffer result = new StringBuffer();
	     boolean first = true;
	      for(String str:mylist) {
	    	  //第一个不拼接","
	    	  if(first) {
	    		  first = false;
	    	  }else {
	    		  result.append(",");
	    	  }
	    	  result.append(str);
	      }
			return result.toString();
	     }
     }
	
	
	/**
	 * 文件下载
	 * */
	@RequestMapping("/downLoadFile")
	@ResponseBody
	public static void downLoadFile(String filePath,HttpServletRequest request,HttpServletResponse response) {
		//文件下载
		  String fileName = request.getSession().getServletContext().getRealPath("")+filePath; 
		 File file = new File(fileName);
		 String filenames = file.getName();
	     InputStream inputStream;
       try {
           inputStream = new BufferedInputStream(new FileInputStream(file));
           byte[] buffer = new byte[inputStream.available()];
           inputStream.read(buffer);
           inputStream.close();
           response.reset();
           // 先去掉文件名称中的空格,然后转换编码格式为utf-8,保证不出现乱码,这个文件名称用于浏览器的下载框中自动显示的文件名
           response.addHeader("Content-Disposition", "attachment;filename=" + new String(filenames.replaceAll(" ", "").getBytes("utf-8"), "iso8859-1"));
           response.addHeader("Content-Length", "" + file.length());
           OutputStream os = new BufferedOutputStream(response.getOutputStream());
           response.setContentType("application/octet-stream");
           os.write(buffer);// 输出文件
           os.flush();
           os.close();
	       //boolean isdelete =  file.delete();
	   	   //System.out.println("删除文件是"+isdelete);
       } catch (Exception e) {
           e.printStackTrace();
       }	
	}
	/**
	 * 在线编辑器生成html
	 * */
	 public static void makehtml(String content,String filename,HttpServletRequest request){
			String PAGE_HEAD="<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>";
			String PAGE_TAIL="</body></html>";

			content = PAGE_HEAD + content + PAGE_TAIL;
			String savePath = request.getRealPath("/") + filename;
			File file = new File(savePath);
			FileOutputStream fos;
			try {
				fos = new FileOutputStream(file);
				fos.write(content.getBytes());
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
}
