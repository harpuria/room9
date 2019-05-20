package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {
	//공지사항 목록 불러오기
	 List<NoticeDTO> noticeList(Map map);
}
