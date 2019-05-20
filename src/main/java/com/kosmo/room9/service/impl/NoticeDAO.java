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
	
	@Override
	public List<NoticeDTO> noticeList(Map map) {
		
		return template.selectList("noticeList",map);
	}
	

}
