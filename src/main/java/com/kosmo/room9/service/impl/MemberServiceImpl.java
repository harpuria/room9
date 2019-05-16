package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.MemberService;

@Service("memberServiceImpl")
public class MemberServiceImpl implements MemberService {

	// MemberDAO 주입
	@Resource(name="memberDAO")
	MemberDAO dao;
	
	@Override
	public boolean isMember(Map map) {
		return dao.isMember(map);
	}

	@Override
	public void signOn(Map map) {
		dao.signOn(map);
	}
	
	@Override
	public boolean idCheck(Map map) {
		return dao.idCheck(map);
	}

	@Override
	public void kakaoConnect(Map map) {
		dao.kakaoConnect(map);
	}
	
	@Override
	public String kakaoLogin(Map map) {
		return dao.kakaoLogin(map);
	}
	
	@Override
	public int naverConnet(Map map) {

		return dao.naverConnet(map);
	}

	@Override
	public String naverLogin(Map map) {
		return dao.naverLogin(map);
	}
}
