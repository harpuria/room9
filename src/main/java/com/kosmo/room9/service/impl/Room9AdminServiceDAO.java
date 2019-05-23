package com.kosmo.room9.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.Room9AdminService;

@Repository("Room9AdminServiceDAO")
public class Room9AdminServiceDAO implements Room9AdminService {

	// SqlSessionTemplate 객체 주입
	@Resource(name="template")
	SqlSessionTemplate template;
	
	
	@Override
	public int Room9MittingInsert(Map map) {
		
		return template.insert("mittingInsert", map);
	}

	@Override
	public int Room9MittingUpdate(Map map) {
		
		return 0;
	}

	@Override
	public int Room9MittingDelete(Map map) {
	
		return 0;
	}

	@Override
	public String getMember(Map map) {
		return template.selectOne("getMember", map);
	}

	@Override
	public String getHostMember(Map map) {
		return template.selectOne("getHostMember", map);
	}


}
