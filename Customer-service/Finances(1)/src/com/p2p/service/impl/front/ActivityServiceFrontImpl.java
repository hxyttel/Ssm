package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.ActivityMapper;
import com.p2p.pojo.Activity;
import com.p2p.service.front.ActivityFrontService;
@Transactional
@Service
public class ActivityServiceFrontImpl implements ActivityFrontService{
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
	public List<Activity> activityName(Integer atid) {
		return activityMapper.activityName(atid);
	}

}
