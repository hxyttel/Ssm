package com.p2p.controller.front;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.p2p.pojo.Fabiao;
import com.p2p.pojo.FabiaoP2p;
import com.p2p.service.front.FabiaoService;
import com.p2p.util.DateUtils;
import com.p2p.util.SendServiceUtil;

public class BidUtilController {
	public static void setFabiao(FabiaoService fabiaoService) {
		//查流标
		String time = DateUtils.getDateTimeFormat(new Date());
		List<Fabiao> lb = fabiaoService.selectlb(time);
		if(lb.size()!=0) {
			for(int i=0;i<lb.size();i++) {
				fabiaoService.updatelb(4,lb.get(i).getFid());
				//对接服务器
				FabiaoP2p fabiaoP2p = new FabiaoP2p();
				fabiaoP2p.setFssuid(lb.get(i).getUid());
				fabiaoP2p.setFstitle(lb.get(i).getFtitle());
				fabiaoP2p.setFsorder(lb.get(i).getFcode());
				fabiaoP2p.setFsmoney(lb.get(i).getFmoney().doubleValue());
				fabiaoP2p.setFstime(lb.get(i).getFendtime());
				fabiaoP2p.setFsstate(4);
				BigDecimal decimal = lb.get(i).getFroe();
				BigDecimal dd = decimal.add(lb.get(i).getFincrease());
				fabiaoP2p.setFsroe(dd.doubleValue());
				fabiaoP2p.setFshktime(lb.get(i).getFendtime());
				try {
					//int repaycount = SendServiceUtil.list(fabiaoP2p, "119.23.55.22/ServiceP2p/fabiao/failed");
				} catch (Exception e) {
					e.printStackTrace();
				}
		
			}
		}
		//查满标
		List<Fabiao> mb = fabiaoService.selectmb(time);
		if(mb.size()!=0) {
			for(int i=0;i<mb.size();i++) {
				fabiaoService.updatelb(7,mb.get(i).getFid());
				//对接服务器
				FabiaoP2p fabiaoP2p = new FabiaoP2p();
				fabiaoP2p.setFssuid(mb.get(i).getUid());
				fabiaoP2p.setFstitle(mb.get(i).getFtitle());
				fabiaoP2p.setFsorder(mb.get(i).getFcode());
				fabiaoP2p.setFsmoney(mb.get(i).getFmoney().doubleValue());
				fabiaoP2p.setFstime(mb.get(i).getFendtime());
				fabiaoP2p.setFsstate(7);
				BigDecimal decimal = mb.get(i).getFroe();
				BigDecimal dd = decimal.add(lb.get(i).getFincrease());
				fabiaoP2p.setFsroe(dd.doubleValue());
				fabiaoP2p.setFshktime(mb.get(i).getFendtime());
				try {
					//int repaycount = SendServiceUtil.list(fabiaoP2p, "119.23.55.22/ServiceP2p/fabiao/success");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		//查还款标
		List<Fabiao> hkb = fabiaoService.selecthkb(time);
		if(hkb.size()!=0) {
			for(int i=0;i<hkb.size();i++) {
				fabiaoService.updatelb(2,hkb.get(i).getFid());
				//对接服务器
				FabiaoP2p fabiaoP2p = new FabiaoP2p();
				fabiaoP2p.setFssuid(hkb.get(i).getUid());
				fabiaoP2p.setFstitle(hkb.get(i).getFtitle());
				fabiaoP2p.setFsorder(hkb.get(i).getFcode());
				fabiaoP2p.setFsmoney(hkb.get(i).getFmoney().doubleValue());
				fabiaoP2p.setFstime(hkb.get(i).getFendtime());
				fabiaoP2p.setFsstate(2);
				BigDecimal decimal = hkb.get(i).getFroe();
				BigDecimal dd = decimal.add(hkb.get(i).getFincrease());
				fabiaoP2p.setFsroe(dd.doubleValue());
				fabiaoP2p.setFshktime(hkb.get(i).getFendtime());
				try {
					//int repaycount = SendServiceUtil.list(fabiaoP2p, "119.23.55.22/ServiceP2p/repayment/add");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
}
