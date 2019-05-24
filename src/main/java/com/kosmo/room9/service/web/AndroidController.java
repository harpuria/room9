package com.kosmo.room9.service.web;

import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.kosmo.room9.service.CrawlingDataDTO;
import com.kosmo.room9.service.impl.CrawlingDataServiceImpl;
import com.kosmo.room9.service.impl.MemberServiceImpl;
import com.kosmo.room9.service.impl.Room9AdminServiceImpl;
import com.kosmo.room9.service.impl.Room9ServiceImpl;
import com.kosmo.room9.service.Room9DTO;
@Controller
public class AndroidController {
	
	// MemberServiceImpl 주입
	@Resource(name="memberServiceImpl")
	MemberServiceImpl memberservice;
	
	@Resource(name="crawlingDataServiceImpl")
	CrawlingDataServiceImpl crawlingservice;
	
	@Resource(name="room9ServiceImpl")
	Room9ServiceImpl  listservice;
	
	// 안드로이드 로그인
	@RequestMapping("/loginAndroid.room9")
	public String loginTest(@RequestParam Map map, HttpServletRequest req) throws Exception{
		System.out.println(map.get("emailid").toString());
		System.out.println(map.get("pwd").toString());
		
		// 안드로이드에 보낼 JSONObject 생성
		JSONObject json = new JSONObject();
		
		if(memberservice.isMember(map)) {
			json.put("msg", "로그인 성공");
			
			String filepath = req.getSession().getServletContext().getRealPath("WEB-INF/views") + "/androidLogin.json";
			
			// JSON 파일로 저장하기
			try {
				System.out.println(filepath);
				FileWriter file = new FileWriter(filepath);
				file.write(json.toJSONString());
				file.flush();
				file.close();
			}
			catch(IOException e) {
				e.printStackTrace();
			}
			
			return "forward:/WEB-INF/views/androidLogin.json";
		}
		else {
			json.put("msg", "로그인 실패");
			
			String filepath = req.getSession().getServletContext().getRealPath("WEB-INF/views") + "/androidLogin.json";
			
			// JSON 파일로 저장하기
			try {
				System.out.println(filepath);
				FileWriter file = new FileWriter(filepath);
				file.write(json.toJSONString());
				file.flush();
				file.close();
			}
			catch(IOException e) {
				e.printStackTrace();
			}
			
			return "forward:/WEB-INF/views/androidLogin.json";
		}
	}

	
	
	@RequestMapping(value="/partnership.room9") 
	public String partnershipTest(@RequestParam Map map,HttpServletRequest req) throws Exception{
		
		List<CrawlingDataDTO> list = crawlingservice.selectList();
		
		JSONArray jsonArray = new JSONArray();
		for(int i=0;i < list.size();i++){
			JSONObject json = new JSONObject();
			json.put("imageUrl",list.get(i).getImg());
			json.put("itemPrice",list.get(i).getPrice());
			json.put("itemTag",list.get(i).getTags());
			json.put("itemTitle",list.get(i).getTitle());
			json.put("itemArea",list.get(i).getArea());
			json.put("ItemlinkUrl",list.get(i).getLinkUrl());
			jsonArray.add(json);
		 }
		
		String filepath = req.getSession().getServletContext().getRealPath("WEB-INF/views") + "/partnership.json";
		
		try {
			System.out.println(filepath);
			FileWriter file = new FileWriter(filepath);
			file.write(jsonArray.toJSONString());
			file.flush();
			file.close();
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		
		return "forward:/WEB-INF/views/partnership.json";
				
				
	}
	
	@RequestMapping(value="/listapp.room9") 
	public String listopenApp(@RequestParam Map map,HttpServletRequest req) throws Exception{
		
		List<Room9DTO> list = listservice.selectList(null);
		
		JSONArray jsonArray = new JSONArray();
		for(int i=0;i < list.size();i++){
			JSONObject json = new JSONObject();
			json.put("R_image_1",list.get(i).getR_image_1());
			json.put("R_money",list.get(i).getR_money());
			
			json.put("R_name",list.get(i).getR_name());
			json.put("R_address",list.get(i).getR_address());
			json.put("R_no",list.get(i).getR_no());
			jsonArray.add(json);
		 }
		
		String filepath = req.getSession().getServletContext().getRealPath("WEB-INF/views") + "/listapp.json";
		
		try {
			System.out.println(filepath);
			FileWriter file = new FileWriter(filepath);
			file.write(jsonArray.toJSONString());
			file.flush();
			file.close();
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		
		return "forward:/WEB-INF/views/listapp.json";
							
	}
	
	@RequestMapping("/fcmpushmsg.room9")
	public void Token(@RequestParam Map map) {
		System.out.println(map);
		System.out.println("Token :" +map.get("token").toString());
		
		
		
		
		
		
		
		
	}

	
}
