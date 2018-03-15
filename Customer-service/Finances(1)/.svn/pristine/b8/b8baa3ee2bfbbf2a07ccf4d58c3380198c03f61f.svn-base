package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.SendMsgMapper;
import com.p2p.pojo.SendMsg;
import com.p2p.service.back.SendMsgService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class SendMsgServiceImpl implements SendMsgService{

	@Resource
	private SendMsgMapper sendmsg;
	
	@Override
	public int addModel(SendMsg model) {
		return sendmsg.addModel(model);
	}

	@Override
	public SendMsg getModel(SendMsg model) {
		return sendmsg.getModel(model);
	}

	@Override
	public List<SendMsg> getAllModel() {
		return sendmsg.getAllModel();
	}

	@Override
	public int update(SendMsg model) {
		return sendmsg.update(model);
	}

	@Override
	public int delete(SendMsg model) {
		return sendmsg.delete(model);
	}

	@Override
	public SendMsg findModel(Integer id) {
		return sendmsg.findModel(id);
	}

	@Override
	public SendMsg findUserMsg(Integer isuser) {
		return sendmsg.findUserMsg(isuser);
	}

	@Override
	public void selectPage(PageInfo pageInfo,SendMsg sendMsg) {
		Page<SendMsg> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<SendMsg> list = sendmsg.selectPage(page, pageInfo.getCondition(), sendMsg);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	public Integer sendMsgCount(SendMsg smsg) {
		return sendmsg.sendMsgCount(smsg);
	}

	@Override
	public int updateIsUser() {
		return sendmsg.updateIsUser();
	}
	
}
