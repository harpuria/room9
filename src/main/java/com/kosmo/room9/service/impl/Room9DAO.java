package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.Room9DTO;
import com.kosmo.room9.service.Room9Service;

@Repository("room9DAO")
public class Room9DAO implements Room9Service {

	// SqlSessionTemplate 객체 주입
	@Resource(name="template")
	SqlSessionTemplate template;
	
	
	@Override
	public List<Room9DTO> selectList(Map map) {
		return template.selectList("selectList", map);
	}


	@Override
	public Room9DTO selectOne(Map map) {
		
		return template.selectOne("selectOne", map);
	}
	
}
