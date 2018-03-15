package com.p2p.controller.back;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.p2p.pojo.Bid;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.FabiaoP2p;
import com.p2p.pojo.Moneyrecord;
import com.p2p.pojo.User;
import com.p2p.service.back.BidService;
import com.p2p.service.back.FabiaobackService;
import com.p2p.service.back.MoneyrecordServiece;
import com.p2p.service.front.IUserService;
import com.p2p.util.PageInfo;
import com.p2p.util.SendServiceUtil;
import com.p2p.util.UUIDCode;

/**
 * 操作人：朱勇峰
 * 操作时间：2018年1月5日09:30:43
 * 
 * */

@Controller
@RequestMapping("/back")
public class FabiaobackController {

	@Resource(name="fabiaobackServiceImpl")	
	private FabiaobackService fabiaoService;
	@Resource(name="bidServiceImpl")
	private BidService bidService;
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	@Resource(name="moneyrecordServiceImpl")
	private MoneyrecordServiece moneyrecordServiece;
	
	@RequestMapping("pagefabiao")
	@ResponseBody
	//发标表分页查询
	public PageInfo pagefabiao(Integer page,Integer rows,Fabiao fabiao) {
		Integer pageSize = (page /rows)+1;
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Integer count = fabiaoService.fabiaoCount();
		Map<String,Object> map = new HashMap<String, Object>();
		pageInfo.setCondition(map);
		fabiaoService.selectPageFabiao(pageInfo, fabiao);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	
	@RequestMapping("selectFabiao")
	@ResponseBody
	//待审核标表分页查询
	public PageInfo selectFabiao(Integer page,Integer rows,Fabiao fabiao) {
		Integer pageSize = (page /rows)+1;
		PageInfo pageInfo = new PageInfo(pageSize,rows);
		Integer count = fabiaoService.fabiaoCount();
		Map<String,Object> map = new HashMap<String, Object>();
		pageInfo.setCondition(map);
		fabiaoService.selectFabiao(pageInfo, fabiao);
		pageInfo.setTotal(count);
		return pageInfo;
	}
	
	@RequestMapping("insertfabiao")
	@ResponseBody
	//发标表增加
	public int insertfabiao(Fabiao fabiao,HttpServletRequest request,MultipartFile[] upfile,MultipartFile orderfile,MultipartFile secfile,MultipartFile repfile)throws Exception {
		String filepath = "";
		if(upfile.length!=0) {
			filepath = UtilController.uploadReNames(upfile,request.getSession());
			String[] aa =  filepath.split(",");
			fabiao.setFimage(aa[0]);
		}
		String fcontract = UtilController.uploadFrom(request,orderfile);
		fabiao.setFcontract(fcontract);
		String frepayment = UtilController.uploadFrom(request,repfile);
		fabiao.setFrepayment(frepayment);
		String fsecurity = UtilController.uploadFrom(request,secfile);
		fabiao.setFsecurity(fsecurity);
		String aa = 	UUIDCode.MackZM();
		String bb = UUIDCode.produceUID(1);
		fabiao.setFcode(aa+bb);
		
		fabiao.setForderimg(filepath);
	
		
		int count = fabiaoService.addModel(fabiao);
		
		return count;
	}
	
	@RequestMapping("updatefabiao")
	@ResponseBody
	//发标表修改为满标
	public int updatefabiao(Fabiao fabiao,HttpServletRequest request,MultipartFile[] upfile,MultipartFile orderfile,MultipartFile secfile,MultipartFile repfile) throws Exception {
		String filepath = "";
		if(upfile.length!=0) {
			filepath = UtilController.uploadReNames(upfile,request.getSession());
			String[] aa =  filepath.split(",");
			fabiao.setFimage(aa[0]);
		}
		String fcontract = UtilController.uploadFrom(request,orderfile);
		fabiao.setFcontract(fcontract);
		String frepayment = UtilController.uploadFrom(request,repfile);
		fabiao.setFrepayment(frepayment);
		String fsecurity = UtilController.uploadFrom(request,secfile);
		fabiao.setFsecurity(fsecurity);
		String aa = 	UUIDCode.MackZM();
		String bb = UUIDCode.produceUID(1);
		fabiao.setFcode(aa+bb);
		
		fabiao.setForderimg(filepath);
		FabiaoP2p fp=new FabiaoP2p();
		BigDecimal acc=fabiao.getFmoney();
		Double money=acc.doubleValue();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String time=sdf.format(new Date());
		fp.setFsmoney(money);
		fp.setFsstate(fabiao.getFstatus());
		fp.setFssuid(fabiao.getUid());
		fp.setFstime(fabiao.getFendtime());
		fp.setFstitle(fabiao.getFtype());
		fp.setFsorder(time+fabiao.getUid());
		fp.setFsroe(fabiao.getFroe().doubleValue()+fabiao.getFincrease().doubleValue());
		fp.setFshktime(fabiao.getFhuanend());
		fp.setFsstyle(fabiao.getFhkstype());
		int fb = SendServiceUtil.list(fp, "119.23.55.22/ServiceP2p/fabiao/add");
		int count =0;
		if(fb==1) {
			count = fabiaoService.update(fabiao);
		}
		return count;
	}
	
	@RequestMapping("deletefabiao")
	@ResponseBody
	//发标表删除
	public int deletefabiao(String ids) {
		int count =0;
		String[] idsStr = ids.split(",");
		for(int i=0;i<idsStr.length;i++) {
			String fid = (String)idsStr[i];
			Fabiao fabiao = new Fabiao();
			fabiao.setFid(Integer.valueOf(fid));
			count = fabiaoService.delete(fabiao);
		}
		return count;
	}
	//流标
	public void faileFabiao() throws Exception {
		List<Fabiao> fabiaoList=fabiaoService.getAllModel();
		for(Fabiao fabiao:fabiaoList) {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date1=new Date();
			Date date2=sdf.parse(fabiao.getFendtime());
			if(date1.getTime()>date2.getTime()|date1.getTime()==date2.getTime()) {
				//如果投标截止时间过了，标的状态还是募集标的话就把钱退换给投标人
				if(fabiao.getFstatus()==1) {
					//查询出投该标的投标人
					Bid bid=new Bid();
					bid.setBfid(fabiao.getFid());
					List<Bid> bidList=bidService.getBidlist(bid);
					for(Bid bi:bidList) {
						//获取到用户
						User use=new User();
						use.setUid(bi.getUid());
						User user=iUserService.getModel(use);
						user.setUbalance(user.getUbalance()+bi.getBmoney().doubleValue());
						//对接对象
						FabiaoP2p fa=new FabiaoP2p();
						fa.setFsmoney(bi.getBmoney().doubleValue());
						fa.setFsorder(fabiao.getFcode());
						fa.setFssuid(fabiao.getUid());
						fa.setFsstate(4);
						fa.setFstitle(fabiao.getFpart());
						fa.setUser(null);
						
						int count = SendServiceUtil.list(fa, "192.168.90.47:8080/ServiceP2p/fabiao/add");
						if(count==1) {
							Moneyrecord money=new Moneyrecord();
							money.setUid(user.getUid());
							money.setMrdetail("流标退款");
							money.setMrwastemoney(bid.getBmoney().doubleValue());
							money.setMrwasttime(sdf.format(new Date()));
							moneyrecordServiece.addModel(money);
							iUserService.update(user);
						}
					}
				}
			}
		}
	
	}
	
	
}
