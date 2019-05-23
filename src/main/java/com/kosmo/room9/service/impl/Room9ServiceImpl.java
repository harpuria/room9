package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.Room9DTO;
import com.kosmo.room9.service.Room9Service;

@Service("room9ServiceImpl")
public class Room9ServiceImpl implements Room9Service{
	// Room9DAO 주입
	@Resource(name="room9DAO")
	Room9DAO dao;

	@Override
	public List<Room9DTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public Room9DTO selectOne(Map map) {
	
		return dao.selectOne(map);
	}

	@Override
	public int reservationInsert(Map map) {
		
		return dao.reservationInsert(map);
	}
	
}
