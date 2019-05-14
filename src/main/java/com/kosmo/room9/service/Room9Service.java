package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface Room9Service {
	// 모든 모임 목록 불러오기
	List<Room9DTO> selectList(Map map);
}
