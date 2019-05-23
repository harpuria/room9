package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface SuggestionService {
	
	//목록용
	List<SuggestionDTO> selectList(Map map);
	//상세 보기용
	SuggestionDTO selectOne(Map map);
	
	//입력/수정/삭제
	int insert(Map map);
	int update(Map map);
	int delete(Map map);
}
