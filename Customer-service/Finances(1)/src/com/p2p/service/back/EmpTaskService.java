package com.p2p.service.back;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.EmpTask;

public interface EmpTaskService extends IBaseService<Integer, EmpTask>{
	abstract List<EmpTask> seleByEmpTask(EmpTask empTask);
}
