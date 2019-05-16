package com.kosmo.room9.service;

import java.util.List;

public interface CrawlingDataService {
	// 데이터 전체 뿌려주기
	List<CrawlingDataDTO> selectList();
}
