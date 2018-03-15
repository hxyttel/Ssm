package com.p2p.service.front;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * 还款Service
 * 操作人：邱雪云
 * 操作时间：2018-01-17
 * */
import com.p2p.base.IBaseService;
import com.p2p.pojo.Repayment;

public interface RepaymentService extends IBaseService<Integer, Repayment> {
	abstract List<Repayment> selectMoney(@Param("uid") Integer uid);

	abstract Integer repaymentCount();
}
