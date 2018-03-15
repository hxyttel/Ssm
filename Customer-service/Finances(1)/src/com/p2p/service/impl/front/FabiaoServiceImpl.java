package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.FabiaoMapper;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.ProjectSelect;
import com.p2p.service.front.FabiaoService;
@Transactional
@Service
public class FabiaoServiceImpl implements FabiaoService{
	
	@Resource
	private FabiaoMapper fabiaomapper;
	
	@Override
	public int addModel(Fabiao model) {
		return fabiaomapper.addModel(model);
	}

	@Override
	public Fabiao getModel(Fabiao model) {
		return fabiaomapper.getModel(model);
	}

	@Override
	public List<Fabiao> getAllModel() {
		return fabiaomapper.getAllModel();
	}

	@Override
	public int update(Fabiao model) {
		return fabiaomapper.update(model);
	}

	@Override
	public int delete(Fabiao model) {
		return fabiaomapper.delete(model);
	}

	@Override
	public Fabiao findModel(Integer id) {
		return fabiaomapper.findModel(id);
	}

	public List<Fabiao> selectByType(String type) {
		return fabiaomapper.selectByType(type);
	}  
	
	public List<Fabiao> selectByLike(ProjectSelect rProjectSelect) {
		return fabiaomapper.selectByLike(rProjectSelect);
	}

	@Override
	public List<Fabiao> getAreasById(String cityid) {
		return null;
	}

	
	@Override
	public long getProductsCount(@Param(value="fpart")String fpart){
		return fabiaomapper.getProductsCount(fpart);
	}

	@Override
	public List<Fabiao> selectProductsByPage(Integer startPos, Integer pageSize, String fpart) {
		return fabiaomapper.selectProductsByPage(startPos, pageSize, fpart);
	}

	@Override
	public List<Fabiao> hotSelect() {
		return fabiaomapper.hotselect();
	}

	@Override
	public List<Fabiao> getRepayByStatus() {
		return fabiaomapper.getRepayByStatus();
	}

	@Override
	public List<Fabiao> selectByStatus() {
		return fabiaomapper.selectByStatus();
	}

	@Override
	public List<Fabiao> selectlb(String time) {
		// TODO Auto-generated method stub
		return fabiaomapper.selectlb(time);
	}

	@Override
	public List<Fabiao> selectmb(String time) {
		// TODO Auto-generated method stub
		return fabiaomapper.selectmb(time);
	}

	@Override
	public List<Fabiao> selecthkb(String time) {
		// TODO Auto-generated method stub
		return fabiaomapper.selecthkb(time);
	}

	@Override
	public int updatelb(Integer start, Integer fid) {
		return fabiaomapper.updatelb(start, fid);
	}

}
