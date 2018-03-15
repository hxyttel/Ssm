package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.Contact;
import com.p2p.pojo.Role;
import com.p2p.service.back.ContactService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="/back/admin")
public class ContactController {
	@Resource(name="contactServiceImpl")
	private ContactService contactService;
	
	@RequestMapping(value="selectContactlist")
	@ResponseBody
	public PageInfo  selectContactlist(Integer page, Integer rows,Contact contact) {
		Integer pageSize = (page /rows)+1;
		Integer count = contactService.Contactcount();
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		contactService.selectPage(pageInfo,contact);
		pageInfo.setTotal(pageInfo.getTotal());
		return pageInfo;
	}
	/*public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	}*/
	@RequestMapping(value="insertContact")
	@ResponseBody
	public int insertRole(Contact contact,HttpServletRequest request,MultipartFile[] file) throws Exception{
		if(contact.getCxs()==1) {
			contactService.updateContact();
		}
		if(file.length!=0) {
			String filepath = UtilController.uploadReNames(file,request.getSession());
			String[] aa =  filepath.split(",");
			contact.setCwechartimgurl(aa[0]);
			contact.setCweboimgurl(aa[1]);
		}
		//String path = request.getSession().getServletContext().getRealPath("uploadFile");
		int count = contactService.addModel(contact);
		return count;
	}
	
	//修改角色信息
	@RequestMapping(value = "updateContact")
	@ResponseBody
	public  int updateRole(Contact contact,HttpServletRequest request,MultipartFile[] file){ 
		if(contact.getCxs()==1) {
			contactService.updateContact();
		}
		boolean isave = false; 
		for(MultipartFile item:file){
			long ii = item.getSize();
			 if(ii!=0) {
				 isave = true;
			 }
		 }
		if(isave) {
			String filepath = UtilController.uploadReNames(file,request.getSession());
			String[] aa =  filepath.split(",");
			contact.setCwechartimgurl(aa[0]);
			contact.setCweboimgurl(aa[1]);
		}
	 
		int count = contactService.update(contact);
		return count;
	}
	@RequestMapping(value ="deleteContact")
	@ResponseBody
	public  int delRole(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String reid = (String) idStr[i];
			Contact contact = new Contact();
			contact.setCid(Integer.valueOf(reid));
			count =contactService.delete(contact);
		}
		return count;
	}
}
