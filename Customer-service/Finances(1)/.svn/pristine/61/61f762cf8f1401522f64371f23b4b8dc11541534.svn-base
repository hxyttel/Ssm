package com.p2p.util;

import java.util.List;

import com.p2p.pojo.Setupnatice;
import com.p2p.service.front.SetupnaticeService;

/**
 * 操作人:汪栋才
 * 操作时间:2017-1-9
 * 封装用户通知初始化设置的工具类
 * 设置用户的消息设置表
 * 判断是否有消息设置表是否初始化用户表
 * 如果没有,则添加
 * */
public class SetupnaticeUtil {
	public static int initSetupnatice(Integer userid,SetupnaticeService setupnaticeService) {
		int issave = 0;
		List<Setupnatice> list = setupnaticeService.getUserSetup(userid);
		if(list.size()==0) {
			Setupnatice set1 = new Setupnatice();
			set1.setUid(userid);
			set1.setUsname("充值成功");
			set1.setUsinsideStatus(1);
			set1.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set1);
			
			Setupnatice set2 = new Setupnatice();
			set2.setUid(userid);
			set2.setUsname("投资成功");
			set2.setUsinsideStatus(1);
			set2.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set2);
			
			Setupnatice set3 = new Setupnatice();
			set3.setUid(userid);
			set3.setUsname("收到本金或利息");
			set3.setUsinsideStatus(1);
			set3.setUsemailStatus(1);
			set3.setUsmessageStatus(1);
			issave = setupnaticeService.addModel(set3);
			
			Setupnatice set4 = new Setupnatice();
			set4.setUid(userid);
			set4.setUsname("收到平台奖励");
			set4.setUsinsideStatus(1);
			set4.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set4);
			
			Setupnatice set5 = new Setupnatice();
			set5.setUid(userid);
			set5.setUsname("提现成功");
			set5.setUsinsideStatus(1);
			set5.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set5);
			
			Setupnatice set6 = new Setupnatice();
			set6.setUid(userid);
			set6.setUsname("债权转让成功");
			set6.setUsinsideStatus(1);
			set6.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set6);
			
			Setupnatice set7 = new Setupnatice();
			set7.setUid(userid);
			set7.setUsname("债权承接成功");
			set7.setUsinsideStatus(1);
			set7.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set7);
			
			Setupnatice set8 = new Setupnatice();
			set8.setUid(userid);
			set8.setUsname("项目公告");
			set8.setUsinsideStatus(1);
			set8.setUsemailStatus(1);
			set8.setUsmessageStatus(1);
			issave = setupnaticeService.addModel(set8);
			
			Setupnatice set9 = new Setupnatice();
			set9.setUid(userid);
			set9.setUsname("活动公告");
			set9.setUsinsideStatus(1);
			set9.setUsemailStatus(1);
			set9.setUsmessageStatus(1);
			issave = setupnaticeService.addModel(set9);
			
			Setupnatice set10 = new Setupnatice();
			set10.setUid(userid);
			set10.setUsname("其他平台公告");
			set10.setUsinsideStatus(1);
			set10.setUsemailStatus(1);
			issave = setupnaticeService.addModel(set10);
		}else {
			issave =1;
		}
		return issave;
	}
}
