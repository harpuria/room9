package com.kosmo.room9.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.CrawlingDataDTO;
import com.kosmo.room9.service.CrawlingDataService;

@Repository("crawlingDataDAO")
public class CrawlingDataDAO implements CrawlingDataService {

	@Resource(name="template")
	SqlSessionTemplate template;
	
	@Override
	public List<CrawlingDataDTO> selectList() {
		return template.selectList("crawlingList");
	}

}
