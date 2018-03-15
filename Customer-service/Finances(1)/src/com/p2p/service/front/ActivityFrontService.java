package com.p2p.service.front;


import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Activity;

public interface ActivityFrontService extends IBaseService<Integer, Activity>{
	List<Activity> activityName(Integer atid);
}
