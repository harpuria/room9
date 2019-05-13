package com.kosmo.room9.service.email;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("emailService")
public class EmailServiceImpl implements EmailService {

	@Resource(name="emailDao")
	EmailDAO dao;
	
	public void setdao(EmailDAO dao) {
		this.dao = dao;
	}

	@Override
	public String getPw(Map<String, Object> paramMap) {
		return dao.getPw(paramMap);
	}
}
