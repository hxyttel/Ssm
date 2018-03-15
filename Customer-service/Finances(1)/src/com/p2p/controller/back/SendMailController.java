package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.SendMail;
import com.p2p.service.back.SendMailService;
import com.p2p.util.PageInfo;
@Controller
@RequestMapping(value="/back/admin")
public class SendMailController {
	
	@Resource(name="sendMailServiceImpl")
	private SendMailService sendMailService;
	
	@RequestMapping(value="selectsendMaillists")
	@ResponseBody
	public PageInfo  selectsendMaillists(Integer page, Integer rows,SendMail sendMail) {
		Integer pageSize = (page /rows)+1;
		Integer count = sendMailService.SendMailcount();
		//得到总的页数
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		sendMailService.selectPage(pageInfo,sendMail);
		pageInfo.setTotal(pageInfo.getTotal());
		return pageInfo;
	}
		//增加
		@RequestMapping(value="insertMail")
		@ResponseBody
		public int insertSendMsg(SendMail sendMail,HttpServletRequest request,MultipartFile[] upfile) throws Exception {
			if(sendMail.getIsuser()==1) {
				sendMailService.updateSendMail();
			}
			int count = sendMailService.addModel(sendMail);
			return count;
		}
		//删除
		@RequestMapping(value ="deleteSendMail")
		@ResponseBody
		public  int deleteSendMsg(String ids){ 
			int count = 0;
			String[] idStr = ids.split(",");
			for (int i = 0; i < idStr.length;i++) {
				String mailid = (String) idStr[i];
				SendMail sendMail = new SendMail();
				sendMail.setMailid(Integer.valueOf(mailid));
				count = sendMailService.delete(sendMail);
			}
			return count;
		}
		//修改
		@RequestMapping(value = "updateSendMail")
		@ResponseBody
		public  int updateSendMsg(SendMail sendMail,HttpServletRequest request,MultipartFile[] upfile){  
			if(sendMail.getIsuser()==1) {
				sendMailService.updateSendMail();
			}
			int count = sendMailService.update(sendMail);
			return count;
		}
}
