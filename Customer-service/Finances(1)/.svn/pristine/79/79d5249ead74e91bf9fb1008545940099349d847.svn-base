package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.ActivityMapper;
import com.p2p.pojo.Activity;
import com.p2p.service.back.ActivityBackService;
import com.p2p.util.PageInfo;
@Transactional
@Service
public class ActivityBackServiceImpl implements ActivityBackService{
	@Resource
	private ActivityMapper activityMapper;
	@Override
	public int addModel(Activity activity) {
		return activityMapper.addModel(activity);
	}

	@Override
	public Activity getModel(Activity activity) {
		return activityMapper.getModel(activity);
	}

	@Override
	public List<Activity> getAllModel() {
		return activityMapper.getAllModel();
	}

	@Override
	public int update(Activity activity) {
		return activityMapper.update(activity);
	}

	@Override
	public int delete(Activity activity) {
		return activityMapper.delete(activity);
	}

	@Override
	public Activity findModel(Integer id) {
		return activityMapper.findModel(id);
	}

	@Override
	public void pageActivity(PageInfo pageInfo, Activity activity) {
		Page<Activity> page = new Page(pageInfo.getNowpage(),pageInfo.getPagesize());
		List<Activity> list = activityMapper.pageActivity(page, pageInfo.getCondition(), activity);
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer countActivity() {
		return activityMapper.countActivity();
	}

}
