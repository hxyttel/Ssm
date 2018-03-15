package com.p2p.controller.back;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.druid.util.StringUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.Employe;
import com.p2p.pojo.Employed;
import com.p2p.service.back.EmpService;
import com.p2p.util.ExportExcel;
import com.p2p.util.ImportExcel;
import com.p2p.util.PageInfo;
import com.p2p.util.ValidateCodeUtil;

/**
 * 操作人:汪栋才、杨嘉辉
 * 操作时间:2017-12-18
 * 操作员工的Controller(后台登入登入)
 * */
@Controller
@RequestMapping("/back")
public class EmpController {
	@Resource(name="empServiceImpl")
	private EmpService empService;
	
	
	 @RequestMapping("/loginindex")
	   public String loginindex(@RequestParam String name,@RequestParam String password,HttpServletRequest request,HttpSession session){
		   UsernamePasswordToken token = new UsernamePasswordToken(name,password);
		   Subject subject = SecurityUtils.getSubject();
		   try {  
	           //在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查  
	           //每个Realm都能在必要时对提交的AuthenticationTokens作出反应  
	           //所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法  
	           System.out.println("对用户[" + name + "]进行登录验证..验证开始");  
	           subject.login(token);  
	           System.out.println("对用户[" + name + "]进行登录验证..验证通过");  
	       }catch(UnknownAccountException uae){  
	           System.out.println("对用户[" + name + "]进行登录验证..验证未通过,该账户不存在");  
	           session.setAttribute("message_login", "该账户不存在或已被管理员禁用!");  
	           return "redirect:/back/tologin";
	       }catch(IncorrectCredentialsException ice){  
	           System.out.println("对用户[" + name + "]进行登录验证..验证未通过,密码错误"); 
	           session.setAttribute("message_login", "密码不正确!"); 
	           return "redirect:/back/tologin";
	       }catch(LockedAccountException lae){  
	           System.out.println("对用户[" + name + "]进行登录验证..验证未通过,账户已锁定");  
	           session.setAttribute("message_login", "账户已锁定!");  
	       }catch(ExcessiveAttemptsException eae){  
	           System.out.println("对用户[" + name + "]进行登录验证..验证未通过,错误次数过多");  
	           session.setAttribute("message_login", "用户名或密码错误次数过多!");  
	       }catch(AuthenticationException ae){  
	           //通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景  
	           System.out.println("对用户[" + name + "]进行登录验证..验证未通过,堆栈轨迹如下");  
	           //ae.printStackTrace();  
	           session.setAttribute("message_login", "账号或密码不正确!");  
	           return "redirect:/back/tologin";
	       }  
	       //验证是否登录成功  
	       if(subject.isAuthenticated()){  
	           System.out.println("用户[" + name + "]登录认证通过..账号密码正确");
	           Employe employe = empService.getByemployname(name);
	           session.setAttribute("employee", employe);
	           return "redirect:/back/toindex";
	       }else{  
	           token.clear();  
	           return "redirect:/back/tologin";
	       }  

	   }
	 /**
	    * 生成验证码
	    * @param request
	    * @param response
	    * @throws IOException
	    * @ValidateCode.generateTextCode(验证码字符类型,验证码长度,需排除的特殊字符)
	    * @ValidateCode.generateImageCode(文本验证码,图片宽度,图片高度,干扰线的条数,字符的高低位置是否随机,图片颜色,字体颜色,干扰线颜色)
	    */

	   @RequestMapping(value = "validateCode")
	   public void validateCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
	       response.setHeader("Cache-Control", "no-cache");
	       String verifyCode = ValidateCodeUtil.generateTextCode(ValidateCodeUtil.TYPE_NUM_LOWER, 4, null);
	       request.getSession().setAttribute("validateCode", verifyCode);
	       response.setContentType("image/jpeg");
	       BufferedImage bim = ValidateCodeUtil.generateImageCode(verifyCode, 95, 30, 8, true, Color.WHITE, Color.BLUE, null);
	       ImageIO.write(bim, "JPEG", response.getOutputStream());
	   }
	   //失去焦点判断验证码是否正确
	   @RequestMapping(value="SureCode")
	   @ResponseBody
	   public String SureCode(String imgcode,HttpSession session) throws JsonProcessingException {
		   ObjectMapper mapper = new ObjectMapper(); //转换器  
		   Map<String, Object> map = new HashMap<String, Object>();
		   String code = (String) session.getAttribute("validateCode");
	       if (StringUtils.isEmpty(imgcode) || !StringUtils.equals(code,imgcode.toLowerCase())) {
	    	   map.put("message","");
	       }
	       else {
	    	   map.put("message","OK");
	       }
	       String JSON = mapper.writeValueAsString(map);
		   return JSON;
	   }
   
	   @RequestMapping(value="selePwd")
	   @ResponseBody
	   //查询原密码是否相同
	   private String selePwd(String OldEpassword,String eid ,HttpServletRequest request) throws JsonProcessingException {
		   ObjectMapper mapper = new ObjectMapper(); //转换器  
		   Map<String, Object> map = new HashMap<String, Object>();
		   System.out.println("eid="+eid);
		   System.out.println("OldEpassword="+OldEpassword);
		   Employe emp = empService.findModel(Integer.valueOf(eid));
		   Object result = new SimpleHash("MD5", OldEpassword, ByteSource.Util.bytes("admin"), 1); 
		   String epassword = emp.getEpassword();
		   String password = result.toString();
		   System.out.println("password="+password);
		   System.out.println("epassword="+epassword);
		   if(password.equals(epassword)) {
			   map.put("valid","true");
		   }
		   else {
			   map.put("valid","false");
		   }
		   String JSON = mapper.writeValueAsString(map);
		   return JSON;
	   }
	   
	   //修改用户密码
	   @RequestMapping(value="updatePwd")
	   @ResponseBody
	   private int updatePwd(String epassword,String eid) {
		   Object result = new SimpleHash("MD5", epassword, ByteSource.Util.bytes("admin"), 1);
		   Employe emp = new Employe();
		   emp.setEpassword(result.toString());
		   emp.setEid(Integer.valueOf(eid));
		   emp.setEpassword(result.toString());
		   int count = empService.update(emp);
		   return count;
	   }
	   
   	//实现分页查询
	@RequestMapping(value="selectEmployeList")
	@ResponseBody
	public PageInfo  selectEmployeList(Integer page, Integer rows,Employe emp) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
		Integer pageSize = (page /rows)+1;
		Integer count = empService.employeCount(emp);
		//得到总的页数
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		empService.selectPage(pageInfo,emp);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	
	//实现新增
	@RequestMapping(value="insertEmp")
	@ResponseBody
	public int insertRole(Employe emp,HttpServletRequest request,MultipartFile file) throws Exception {
		Object result = new SimpleHash("MD5", "123", ByteSource.Util.bytes("admin"), 1);
		String filepath = UtilController.uploadFrom(request,file);
		emp.setEimage(filepath);
		emp.setEpassword(result.toString());
		int count = empService.addModel(emp);
		return count;
	}
	
	
	//修改角色信息
	@RequestMapping(value = "updateEmp")
	@ResponseBody
	public  int updateRole(Employe emp){  
		int count = empService.update(emp);
		return count;
	}
	
	//删除
	@RequestMapping(value ="deleteEmp")
	@ResponseBody
	public  int delEmp(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String reid = (String) idStr[i];
			Employe emp = new Employe();
			emp.setReid(Integer.valueOf(reid));
			count =empService.delete(emp);
		}
		return count;
	}
	
	
	 //退出登录
	   @RequestMapping(value="adminlogout")
		public String adminLogin(){
		   Subject EmpSession = SecurityUtils.getSubject();
		   EmpSession.logout();
		return "redirect:/back/tologin";
		}
	   
	 
	  //导出
	   @RequestMapping("export")
	   @ResponseBody
	   public String export() {
		   String sheetName="员工列表";
		    String titleName="Employee";
		    String[] headers = {"主键id", "角色id", "员工编号","员工姓名", "员工性别","员工密码","员工身份证号","员工手机号","员工职位","员工邮箱","角色状态","创建时间","自我声明","员工头像"};
		    List<Employe> dataSet = empService.getAllModel();
		    List<Employed> data=new ArrayList<>();
		    for(Employe emp: dataSet) {
		    	Employed e=new Employed();
		    	e.setEemail(emp.getEemail());
		    	e.setEenum(emp.getEenum());
		    	e.setEid(emp.getEid());
		    	e.setEidcard(emp.getEidcard());
		    	e.setEimage(emp.getEimage());
		    	e.setEname(emp.getEname());
		    	e.setEpassword(emp.getEpassword());
		    	e.setEphone(emp.getEphone());
		    	e.setEposition(emp.getEposition());
		    	e.setEremark(emp.getEremark());
		    	e.setEretime(emp.getEretime());
		    	e.setEsex(emp.getEsex());
		    	e.setEstatus(emp.getEstatus());
		    	e.setReid(emp.getReid());
		    	data.add(e);
		    }
		    String resultUrl="E:\\Employee.xls";
		    String pattern="yyyy-MM-dd";
		    ExportExcel.exportExcel(sheetName, titleName, headers, data, resultUrl, pattern);
		    return "E:\\Employee.xls";
	   }
	
	  
	 //导入
	   @RequestMapping("import")
	   @ResponseBody
	   public String imports(HttpServletRequest request,String fileName) throws IllegalStateException, IOException {
		   
		   MultipartHttpServletRequest sr = (MultipartHttpServletRequest )request;
			//拿到文件对象
			CommonsMultipartFile mf = (CommonsMultipartFile)sr.getFile(fileName);
			
			//文件名字  book.xml
			String filename = mf.getOriginalFilename();
			//就是.xml
			String suffix = filename.substring(filename.indexOf("."));
			
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
			
			String newFilename = df.format(new Date());
			
			String contextPath = request.getSession().getServletContext().getRealPath("/uploadFile/file/");
			
			contextPath = contextPath.replace("\\", "/");
			//上传文件
			mf.transferTo(new File(contextPath+newFilename+suffix));
			//f:\abd\dd\dd
			String originUrl = contextPath+newFilename+suffix;
			
			int startRow = 2;
			int endRow = 0;
			
			List<Employed> list = (List<Employed>)ImportExcel.importExcel(originUrl, startRow, endRow, Employed.class);
			
			for(Employed emp:list){
				//testService.insert(test);
				Employe e=new Employe();
		    	e.setEemail(emp.getEemail());
		    	e.setEenum(emp.getEenum());
		    	e.setEid(emp.getEid());
		    	e.setEidcard(emp.getEidcard());
		    	e.setEimage(emp.getEimage());
		    	e.setEname(emp.getEname());
		    	e.setEpassword(emp.getEpassword());
		    	e.setEphone(emp.getEphone());
		    	e.setEposition(emp.getEposition());
		    	e.setEremark(emp.getEremark());
		    	e.setEretime(emp.getEretime());
		    	e.setEsex(emp.getEsex());
		    	e.setEstatus(emp.getEstatus());
		    	e.setReid(emp.getReid());

				empService.addModel(e);
			}
			return "success";
			
	   }
	   
	   
	   //下载
	   @RequestMapping("downloadEmploye")
	   @ResponseBody
	   public String  download(HttpServletRequest request,HttpServletResponse res) throws IOException {
		  String path=request.getServletContext().getRealPath("/uploadFile/file/Employee.xls");  
		  File file=new File(path);  
		  HttpHeaders headers = new HttpHeaders();    
	       // res.addHeader("Content-Disposition", "attachment;filename="+new String("Employe.xlsx".getBytes("gbk"),"iso-8859-1"));
	        String fileName=new String("Employee.xls".getBytes("utf-8"),"gbk");//为了解决中文名称乱码问题  
	        /*  headers.setContentDispositionFormData("attachment", fileName);   
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);   */
		   
		   if (file.exists()) {
               res.setContentType("application/force-download");// 设置强制下载不打开
               res.addHeader("Content-Disposition",
                       "attachment;fileName=" + fileName);// 设置文件名
               byte[] buffer = new byte[1024];
               FileInputStream fis = null;
               BufferedInputStream bis = null;
               try {
                   fis = new FileInputStream(file);
                   bis = new BufferedInputStream(fis);
                   OutputStream os = res.getOutputStream();
                   int i = bis.read(buffer);
                   while (i != -1) {
                       os.write(buffer, 0, i);
                       i = bis.read(buffer);
                   }
               } catch (Exception e) {
                   e.printStackTrace();
               } finally {
                   if (bis != null) {
                       try {
                           bis.close();
                       } catch (IOException e) {
                           e.printStackTrace();
                       }
                   }
                   if (fis != null) {
                       try {
                           fis.close();
                       } catch (IOException e) {
                           e.printStackTrace();
                       }
                   }
               }
           }
       return null;
	   }
	   
	  
}
