package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.MessageUtilMapper;
import com.p2p.pojo.MessageUtil;
import com.p2p.service.back.MessageUtilService;

@Transactional
@Service
public class MessageUtilServiceImpl implements MessageUtilService{

	@Resource
	private MessageUtilMapper messagemapper;
	
	@Override
	public int addModel(MessageUtil model) {
		return messagemapper.addModel(model);
	}

	@Override
	public MessageUtil getModel(MessageUtil model) {
		return messagemapper.getModel(model);
	}

	@Override
	public List<MessageUtil> getAllModel() {
		return messagemapper.getAllModel();
	}

	@Override
	public int update(MessageUtil model) {
		return messagemapper.update(model);
	}

	@Override
	public int delete(MessageUtil model) {
		return messagemapper.delete(model);
	}

	@Override
	public MessageUtil findModel(Integer id) {
		return messagemapper.findModel(id);
	}
	
}
