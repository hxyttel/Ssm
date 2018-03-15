package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.AddressMapper;
import com.p2p.pojo.Area;
import com.p2p.pojo.City;
import com.p2p.pojo.Provice;
import com.p2p.service.front.AddressService;

/**
 * 获取省市县表数据  Service实现类
 * 
 * @author lxj
 * */
@Transactional
@Service
public class AddressServiceImpl implements AddressService{
	@Resource
	private AddressMapper addressMapper;

	@Override
	public List<Provice> getProvinceList() {
		return addressMapper.getProvinceList();
	}

	@Override
	public List<City> getCityByPvId(String id) {
		return addressMapper.getCityByPvId(id);
	}

	@Override
	public List<Area> getAreaByCyid(String id) {
		return addressMapper.getAreaByCyid(id);
	}

	@Override
	public List<City> getCityList() {
		return addressMapper.getCityList();
	}

	@Override
	public List<Area> getAreaList() {
		return addressMapper.getAreaList();
	}

}
