package com.p2p.service.back;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Video;
import com.p2p.util.PageInfo;

public interface VideoService extends IBaseService<Integer, Video>{
	abstract void selectPage(PageInfo pageInfo);//实现分页
	
	//查询总的记录数
	abstract Integer videoCount();
}
