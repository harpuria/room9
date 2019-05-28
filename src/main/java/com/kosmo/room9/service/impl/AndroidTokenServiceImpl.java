package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.AndroidTokenDTO;
import com.kosmo.room9.service.AndroidTokenService;


@Service("androidTokenServiceImpl")
public class AndroidTokenServiceImpl implements AndroidTokenService{

	@Resource(name="androidTokenDAO")
	AndroidTokenDAO dao;
	
	@Override
	public List<AndroidTokenDTO> selectList() {
		return dao.selectList();
	}
	
	@Override
	public int insertToken(Map map) {
		return dao.insertToken(map);
	}

	@Override
	public List<String> selectToken(Map map) {
		return dao.selectToken(map);
	}

}
