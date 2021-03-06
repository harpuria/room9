package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface Room9Service {
	// 모든 모임 목록 불러오기
	List<Room9DTO> selectList(Map map);
	
	// 모임 상세보기
	Room9DTO selectOne(Map map);
	
	//모임 테이블에 넣어주기
	int reservationInsert(Map map);
}
