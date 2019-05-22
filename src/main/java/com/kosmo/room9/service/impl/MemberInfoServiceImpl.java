package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.HostDTO;
import com.kosmo.room9.service.HostService;
import com.kosmo.room9.service.MemberInfoDTO;
import com.kosmo.room9.service.MemberInfoService;

@Service("memberInfoServiceImpl")
public class MemberInfoServiceImpl implements MemberInfoService {

	// DAO 주입
	@Resource(name="memberInfoDAO")
	MemberInfoDAO dao;

	@Override
	public List<MemberInfoDTO> selectMemberInfoList(Map map) {
		return dao.selectMemberInfoList(map);
	}
}
