package com.kosmo.room9.service.email;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("emailDao")
public class EmailDAO implements EmailService {
	
	@Resource(name="template")
	SqlSessionTemplate template;
	
	@Override
	public String getPw(Map<String, Object> paramMap) {
		return template.selectOne("passEquals",paramMap);
	}
}
