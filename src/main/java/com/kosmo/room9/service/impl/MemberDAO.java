package com.kosmo.room9.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.MemberService;

@Repository("memberDAO")
public class MemberDAO implements MemberService{

	// SqlSessionTemplate 객체 주입
	@Resource(name="template")
	SqlSessionTemplate template;
	
	@Override
	public boolean isMember(Map map) {
		return (Integer)template.selectOne("isMember", map) == 1 ? true : false;
	}

	@Override
	public void signOn(Map map) {
		template.insert("signOn", map);
	}
	
	@Override
	public boolean idCheck(Map map) {
		return (Integer) template.selectOne("IdCheck", map) == 1 ? true : false;
	}
}
