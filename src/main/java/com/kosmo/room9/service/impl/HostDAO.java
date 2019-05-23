package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.HostDTO;
import com.kosmo.room9.service.HostService;

@Repository("hostDAO")
public class HostDAO implements HostService{
	// SqlSessionTemplate 주입
	@Resource(name="template")
	SqlSessionTemplate template;

	@Override
	public void insertHost(Map map) {
		template.insert("insertHost", map);
	}

	@Override
	public boolean isHost(Map map) {
		return (Integer)template.selectOne("isHost", map) == 1 ? true : false;
	}

	@Override
	public List<HostDTO> selectHostList(Map map) {
		return template.selectList("selectHostList", map);
	}

	@Override
	public int selecthost_no(Map map) {
		
		return template.selectOne("selecthost_no", map);
	}

	@Override
	public List<HostDTO> room9List(Map map) {
		return template.selectList("room9List",map);
	}
}
