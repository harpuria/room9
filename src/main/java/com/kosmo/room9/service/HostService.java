package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

// Host 관련 서비스 인터페이스
public interface HostService {
	// 호스트 가입
	void insertHost(Map map);
	// 호스트 확인
	boolean isHost(Map map);
	// 호스트 목록 뿌려주기
	List<HostDTO> selectHostList(Map map);
	
	// 호스트 목록,방제목 뿌려주기
	List<HostDTO> room9List(Map map);
		
	
	//호스트번호뿌려주기
	int selecthost_no(Map map);
}
