package com.p2p.service.back;



import org.apache.ibatis.annotations.Param;
import com.p2p.base.IBaseService;
import com.p2p.pojo.Employe;
import com.p2p.util.PageInfo;
/**
 * 操作人:汪栋才、杨嘉辉
 * 操作时间:2017-12-18
 * 后台员工的Service
 * */
public interface EmpService extends IBaseService<Integer, Employe>{
   Employe getByemployname(String  ename);
   
    //实现分页查询
    abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="emp") Employe emp);//实现分页
 		
 	//查询总的记录数
 	abstract Integer employeCount(@Param(value="emp") Employe emp);
}
