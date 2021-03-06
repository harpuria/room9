package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.NoticeDTO;
import com.kosmo.room9.service.NoticeService;

@Service("noticeServiceImpl")
public class NoticeServiceImpl implements NoticeService{
	//NoticeDAO주입
	@Resource(name="noticeDAO")
	NoticeDAO dao;
	
	@Override
	public List<NoticeDTO> noticeList(Map map) {
		
		return dao.noticeList(map);
	}

	@Override
	public int delete(Map map) {
		
		return dao.delete(map);
	}

	@Override
	public int insert(Map map) {
		
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		
		return dao.update(map);
	}

	@Override
	public NoticeDTO selectOne(Map map) {
		
		return dao.selectOne(map);
	}

	

}
