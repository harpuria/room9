package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.MemberService;
import com.kosmo.room9.service.ReservationDataDTO;
import com.kosmo.room9.service.Room9MemberDTO;

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

	//마이페이지에서 멤버의 정보 뽑아오기
	@Override
	public Room9MemberDTO userInfoSelect(Map map) {
		
		return dao.userInfoSelect(map);
	}

	//마이페이지에서 비밀번호 변경하기
	@Override
	public int userInfoUpdate(Map map) {
	
		return dao.userInfoUpdate(map);
	}

	//예약정보를 뽑아오기 위해서 예약번호 가져오기
	@Override
	public String reservationPull(Map map) {
	
		return dao.reservationPull(map);
	}
	
	//해당회원의 예약정보 가져오기
	@Override
	public List<ReservationDataDTO> ResInfoSelectList(Map map) {
		
		return dao.ResInfoSelectList(map);
	}

}
