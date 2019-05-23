package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface Room9AdminService {
	
	int Room9MittingInsert(Map map);
	int Room9MittingUpdate(Map map);
	int Room9MittingDelete(Map map);
	
	// 회원 수 가져오기
	String getMember(Map map);
	
	// 호스트 회원 수 가져오기
	String getHostMember(Map map);
	
	// 예약자 회원 목록 가져오기
	List<ReservationDataDTO> reservationList(Map map);
	
}
