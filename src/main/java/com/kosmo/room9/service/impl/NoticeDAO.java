package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.NoticeDTO;
import com.kosmo.room9.service.NoticeService;

@Repository("noticeDAO")
public class NoticeDAO implements NoticeService{

	@Resource(name="template")
	SqlSessionTemplate template;
	
	//공지사항 리스트
	@Override
	public List<NoticeDTO> noticeList(Map map) {
		return template.selectList("noticeList",map);
	}

	//삭제/입력/수정
	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return template.delete("noticeDelete",map);
	}

	@Override
	public int insert(Map map) {
		
		return template.insert("noticeInsert",map);
	}

	@Override
	public int update(Map map) {
		return template.update("noticeUpdate",map);
		
	}
	//공지사항상세보기
	@Override
	public NoticeDTO selectOne(Map map) {
		
		return template.selectOne("noticeselectOne",map);
	}
	

}
