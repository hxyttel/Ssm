package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.ContactMapper;
import com.p2p.pojo.Contact;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Role;
import com.p2p.service.back.ContactService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class ContactServiceImpl implements ContactService{
	@Resource
	private ContactMapper contactMapper;

	public int addModel(Contact contaact) {
		return contactMapper.addModel(contaact);
	}

	public Contact getModel(Contact contaact) {
		return contactMapper.getModel(contaact);
	}

	public List<Contact> getAllModel() {
		return contactMapper.getAllModel();
	}

	public int update(Contact contaact) {
		return contactMapper.update(contaact);
	}

	public int delete(Contact contaact) {
		return contactMapper.delete(contaact);
	}

	@Override
	public Contact findModel(Integer id) {
		
		return contactMapper.findModel(id);
	}

	@Override
	public Integer Contactcount() {
		return contactMapper.contactcount();
	}

	@Override
	public void selectPage(PageInfo pageInfo, Contact contact) {
		Page<Contact> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Contact> list = contactMapper.selectPage(page, pageInfo.getCondition(), contact);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public void cxslist(Integer cxs) {
		
	}

	@Override
	public Integer updateContact() {
		
		return contactMapper.updateContact();
	}

}
