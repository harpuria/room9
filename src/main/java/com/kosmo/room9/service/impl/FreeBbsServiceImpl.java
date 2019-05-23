package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.FreeBbsDTO;
import com.kosmo.room9.service.FreeBbsService;

@Service("freeService")
public class FreeBbsServiceImpl implements FreeBbsService{
	@Resource(name="freeBbsDAO")
	private FreeBbsDAO dao;
	
	@Override
	public int getCount(Map map) {
		return dao.getCount(map);
	}

	@Override
	public List<FreeBbsDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	//상세보기
	@Override
	public FreeBbsDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

}
