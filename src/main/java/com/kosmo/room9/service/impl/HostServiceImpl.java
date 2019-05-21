package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.HostDTO;
import com.kosmo.room9.service.HostService;

@Service("hostServiceImpl")
public class HostServiceImpl implements HostService {

	// HostDAO 주입
	@Resource(name="hostDAO")
	HostDAO dao;
	
	@Override
	public void insertHost(Map map) {
		dao.insertHost(map);
	}

	@Override
	public boolean isHost(Map map) {
		return dao.isHost(map);
	}

	@Override
	public List<HostDTO> selectHostList(Map map) {
		return dao.selectHostList(map);
	}
}
