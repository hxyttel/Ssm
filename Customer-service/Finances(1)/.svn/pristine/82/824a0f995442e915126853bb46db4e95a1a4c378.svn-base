package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.RecordMapper;
import com.p2p.pojo.Record;
import com.p2p.service.back.RecordService;
import com.p2p.util.PageInfo;
@Transactional
@Service
public class RecordServiceImpl implements RecordService{
	@Resource
	private RecordMapper recordMapper;
	@Override
	public int addModel(Record record) {
		return recordMapper.addModel(record);
	}

	@Override
	public Record getModel(Record record) {
		return recordMapper.getModel(record);
	}

	@Override
	public List<Record> getAllModel() {
		return recordMapper.getAllModel();
	}

	@Override
	public int update(Record record) {
		return recordMapper.update(record);
	}

	@Override
	public int delete(Record record) {
		return recordMapper.delete(record);
	}

	@Override
	public Record findModel(Integer id) {
		return recordMapper.findModel(id);
	}

	@Override
	public void pageRecord(PageInfo pageInfo, Record record) {
		Page<Record> page = new Page<>(pageInfo.getNowpage(),pageInfo.getPagesize());
		List<Record> list = recordMapper.pageRecord(page, pageInfo.getCondition(), record);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer countRecord() {
		return recordMapper.countRecord();
	}
}
