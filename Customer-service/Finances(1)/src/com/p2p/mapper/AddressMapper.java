package com.p2p.mapper;

import java.util.List;

import com.p2p.pojo.Area;
import com.p2p.pojo.City;
import com.p2p.pojo.Provice;

/**
 * 获取省市县表数据  Mapper接口
 * 
 * @author  lxj
 * */
public interface AddressMapper {
	List<Provice> getProvinceList();  //查询省份表中所有数据
	List<City> getCityList();  //查询市
	List<Area> getAreaList();  //查询县
	List<City> getCityByPvId(String id);  //根据省份id查询所在市
	List<Area> getAreaByCyid(String id);  //根据城市id获取到县
}
