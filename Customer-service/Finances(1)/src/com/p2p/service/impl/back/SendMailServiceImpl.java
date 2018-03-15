package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.SendMailMapper;
import com.p2p.pojo.Contact;
import com.p2p.pojo.SendMail;
import com.p2p.service.back.SendMailService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class SendMailServiceImpl implements SendMailService{

	@Resource
	private SendMailMapper sendMailMapper;
	
	@Override
	public int addModel(SendMail model) {
		return sendMailMapper.addModel(model);
	}

	@Override
	public SendMail getModel(SendMail model) {
		return sendMailMapper.getModel(model);
	}

	@Override
	public List<SendMail> getAllModel() {
		return sendMailMapper.getAllModel();
	}

	@Override
	public int update(SendMail model) {
		return sendMailMapper.update(model);
	}

	@Override
	public int delete(SendMail model) {
		return sendMailMapper.delete(model);
	}

	@Override
	public SendMail findModel(Integer id) {
		return sendMailMapper.findModel(id);
	}

	@Override
	public SendMail findUserMail(Integer isuser) {
		return sendMailMapper.findUserMail(isuser);
	}

	@Override
	public void selectPage(PageInfo pageInfo, SendMail sendMail) {
		Page<SendMail> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<SendMail> list = sendMailMapper.selectPage(page, pageInfo.getCondition(), sendMail);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer SendMailcount() {
		return sendMailMapper.SendMailcount();
	}

	@Override
	public Integer updateSendMail() {
		return sendMailMapper.updateSendMail();
	}
	
}	
