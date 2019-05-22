package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.HostDTO;
import com.kosmo.room9.service.HostService;
import com.kosmo.room9.service.MemberInfoDTO;
import com.kosmo.room9.service.MemberInfoService;
import com.kosmo.room9.service.MemberService;
import com.kosmo.room9.service.ReservationDataDTO;
import com.kosmo.room9.service.Room9MemberDTO;

@Repository("memberInfoDAO")
public class MemberInfoDAO implements MemberInfoService{
	// SqlSessionTemplate 주입
	@Resource(name="template")
	SqlSessionTemplate template;

	@Override
	public List<MemberInfoDTO> selectMemberInfoList(Map map) {
		
		return template.selectList("selectMemberInfoList",map);
	}



}
