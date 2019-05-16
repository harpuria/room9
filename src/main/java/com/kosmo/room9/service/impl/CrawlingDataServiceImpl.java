package com.kosmo.room9.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.room9.service.CrawlingDataDTO;
import com.kosmo.room9.service.CrawlingDataService;

@Service("crawlingDataServiceImpl")
public class CrawlingDataServiceImpl implements CrawlingDataService{

	@Resource(name="crawlingDataDAO")
	CrawlingDataDAO dao;
	
	@Override
	public List<CrawlingDataDTO> selectList() {
		return dao.selectList();
	}

}
