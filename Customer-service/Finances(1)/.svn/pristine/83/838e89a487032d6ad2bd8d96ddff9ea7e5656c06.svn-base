package com.p2p.controller.back;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.SendMsg;
import com.p2p.service.back.SendMsgService;
import com.p2p.util.PageInfo;

@Controller
@RequestMapping(value="back/admin")
public class SendMsgController {
	@Resource(name="sendMsgServiceImpl")
	private SendMsgService sendMsgService;
	
	@RequestMapping(value="selectSendMsgList")
	@ResponseBody
	public PageInfo  selectSendMsgList(Integer page, Integer rows,SendMsg sendMsg) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
		Integer pageSize = (page /rows)+1;
		//得到总的页数
		Integer count = sendMsgService.sendMsgCount(sendMsg);
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Map<String,Object> map = new HashMap<String,Object>();
		pageInfo.setCondition(map);
		sendMsgService.selectPage(pageInfo, sendMsg);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	//增加
	
	@RequestMapping(value="insertSendMsg")
	@ResponseBody
	public int insertSendMsg(SendMsg sendMsg,HttpServletRequest request,MultipartFile[] upfile) throws Exception {
		if(sendMsg.getIsuser()==1) {
			sendMsgService.updateIsUser();
		}
		int count = sendMsgService.addModel(sendMsg);
		return count;
	}
	//删除
	@RequestMapping(value ="deleteSendMsg")
	@ResponseBody
	public  int deleteSendMsg(String ids){ 
		int count = 0;
		String[] idStr = ids.split(",");
		for (int i = 0; i < idStr.length;i++) {
			String msgid = (String) idStr[i];
			SendMsg sendMsg = new SendMsg();
			sendMsg.setMsgid(Integer.valueOf(msgid));
			count = sendMsgService.delete(sendMsg);
		}
		return count;
	}
	//修改
		@RequestMapping(value = "updateSendMsg")
		@ResponseBody
		public  int updateSendMsg(SendMsg sendMsg,HttpServletRequest request,MultipartFile[] upfile){  
			if(sendMsg.getIsuser()==1) {
				sendMsgService.updateIsUser();
			}
			int count = sendMsgService.update(sendMsg);
			return count;
		}
}
