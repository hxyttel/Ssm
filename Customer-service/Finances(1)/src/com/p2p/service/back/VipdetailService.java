package com.p2p.service.back;

import java.util.List;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseService;
import com.p2p.pojo.Vipdetail;
import com.p2p.util.PageInfo;

public interface VipdetailService extends IBaseService<Integer, Vipdetail>{
	abstract void selectPage(PageInfo pageInfo);//实现分页
		
		//查询总的记录数
		abstract Integer vipdetailCount();
}
