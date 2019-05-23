package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.SuggestionDTO;
import com.kosmo.room9.service.SuggestionService;
@Service("suggestionImpl")
public class SuggestionImpl implements SuggestionService{
	
	@Resource(name="suggestionDAO")
	SuggestionDAO dao;	
	
	@Override
	public List<SuggestionDTO> selectList(Map map) {
		
		return dao.selectList(map);
	}

	@Override
	public SuggestionDTO selectOne(Map map) {
		
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
