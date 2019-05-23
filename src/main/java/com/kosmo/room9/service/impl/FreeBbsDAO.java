package com.kosmo.room9.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.room9.service.FreeBbsDTO;
import com.kosmo.room9.service.FreeBbsService;

@Repository
public class FreeBbsDAO implements FreeBbsService{
	@Resource(name="template")
	SqlSessionTemplate template;

	@Override
	public int getCount(Map map) {
		return template.selectOne("getCount",map);
	}

	@Override
	public List<FreeBbsDTO> selectList(Map map) {
		return template.selectList("freeSelectList",map);
	}

	@Override
	public FreeBbsDTO selectOne(Map map) {
		return template.selectOne("freeSelectone",map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("insert",map);
	}

	@Override
	public int update(Map map) {
		return template.update("update",map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("delete",map);
	}
}//class