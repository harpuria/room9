package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface AndroidTokenService {
	// 데이터 전체 뿌려주기
	List<AndroidTokenDTO> selectList();
	
	int insertToken(Map map);

	List<String> selectToken(Map map);
	
}
