package com.kosmo.room9.service;

import java.util.Map;

public interface MemberService {
	// 로그인 처리
	boolean isMember(Map map);
	// 회원가입 처리
	void signOn(Map map);
	//아이디 중복체크
	public boolean idCheck(Map map);
}
