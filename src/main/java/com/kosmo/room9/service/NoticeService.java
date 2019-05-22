package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {
	//공지사항 목록 불러오기
	 List<NoticeDTO> noticeList(Map map);
	//상세보기용
	 NoticeDTO selectOne(Map map);
	 
	//입력/수정/삭제용]
	int delete(Map map);
	int insert(Map map);
	int update(Map map);
}
