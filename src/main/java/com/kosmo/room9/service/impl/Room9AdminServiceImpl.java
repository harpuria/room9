package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.ReservationDataDTO;
import com.kosmo.room9.service.Room9AdminService;

@Service("Room9AdminServiceImpl")
public class Room9AdminServiceImpl implements Room9AdminService {

	@Resource(name="Room9AdminServiceDAO")
	private Room9AdminServiceDAO dao;
	
	@Override
	public int Room9MittingInsert(Map map) {
		
		return dao.Room9MittingInsert(map);
	}

	@Override
	public int Room9MittingUpdate(Map map) {
		
		return dao.Room9MittingUpdate(map);
	}

	@Override
	public int Room9MittingDelete(Map map) {
		
		return dao.Room9MittingDelete(map);
	}

	@Override
	public String getMember(Map map) {
		return dao.getMember(map);
	}

	@Override
	public String getHostMember(Map map) {
		return dao.getHostMember(map);
	}

	@Override
	public List<ReservationDataDTO> reservationList(Map map) {
		return dao.reservationList(map);
	}


	@Override
	public int RoomHostDelete(Map map) {
		return dao.RoomHostDelete(map);
	}

	@Override
	public int RoomMemberDelete(Map map) {
		return dao.RoomMemberDelete(map);
	}


}
