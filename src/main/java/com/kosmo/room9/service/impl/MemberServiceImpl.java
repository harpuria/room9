package com.kosmo.room9.service.impl;

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

}
