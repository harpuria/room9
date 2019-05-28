package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.AndroidTokenDTO;
import com.kosmo.room9.service.AndroidTokenService;


@Repository("androidTokenDAO")
public class AndroidTokenDAO implements AndroidTokenService {

	@Resource(name="template")
	SqlSessionTemplate template;
	
	@Override
	public List<AndroidTokenDTO> selectList() {
		return template.selectList("token");
	}
	@Override
	public int insertToken(Map map) {
		
		return template.insert("insertToken",map);
	}
	@Override
	public List<String> selectToken(Map map) {
		
		return template.selectList("selectToken",map);
	}
	
	


}
