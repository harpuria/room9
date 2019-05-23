package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.SuggestionDTO;
import com.kosmo.room9.service.SuggestionService;

@Repository("suggestionDAO")
public class SuggestionDAO implements SuggestionService{
	
	@Resource(name="template")
	SqlSessionTemplate template;
	
	
	@Override
	public List<SuggestionDTO> selectList(Map map) {
		return template.selectList("SuggestionSelectList",map);
	}


	@Override
	public SuggestionDTO selectOne(Map map) {
		
		return template.selectOne("SuggestionSelectOne",map);
	}

	@Override
	public int insert(Map map) {
		
		return template.insert("SuggestionInsert",map);
	}

	@Override
	public int update(Map map) {
		
		return template.update("SuggestionUpdate",map);
	}

	@Override
	public int delete(Map map) {
		
		return template.delete("SuggestionDelete",map);
	}
	
}
