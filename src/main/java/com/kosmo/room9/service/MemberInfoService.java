package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

// 회원정보 인터페이스
public interface MemberInfoService {
	// 회원 목록 뿌려주기
	List<MemberInfoDTO> selectMemberInfoList(Map map);
}
