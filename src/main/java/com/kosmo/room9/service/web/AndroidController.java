package com.kosmo.room9.service.web;

import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
import com.kosmo.room9.service.impl.Room9ServiceImpl;

@Controller
public class AndroidController {
	
	// MemberServiceImpl 주입
	@Resource(name="memberServiceImpl")
	MemberServiceImpl memberservice;
	
	@Resource(name="crawlingDataServiceImpl")
	CrawlingDataServiceImpl crawlingservice;
	
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
	@RequestMapping("/fcmpushmsg.room9")
	public String sendPush(HttpServletRequest request, Model model) {
		System.out.println("sendPush.......");
		String token = "fXAeeNRgOSg:APA91bHbM62B19ynfduWbb21D2TBw0RXF3a9uXZGaVcXvo-E92I0vEHhqnpv07cenP1kl2m9fNgin8SKvMBHQ3fr5NZ6m7F9vQ3PJcnpydua3HwjS8QdZoqZ-qHx11Vir2YlAtcirUJA"; // 서버에 저장된 토큰 가져오기
		String title = "wiio";
		String content = "kosmosmomom";
		try {
			title   = URLEncoder.encode(title  ,"UTF-8"); // 한글깨짐으로 URL인코딩해서 보냄
			content = URLEncoder.encode(content,"UTF-8");
			System.out.println(String.format("title : %s, content : %s", title, content));

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		ResponseEntity<String> result = sendHttp(token, title, content);
		model.addAttribute("serverTime", token);
		model.addAttribute("result", result.getBody());
		return "";
	}

	private ResponseEntity<String> sendHttp(String token, String title, String content){

		RestTemplate template = new RestTemplate();
		HttpHeaders headers = new HttpHeaders(); 
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.add("Authorization", "key="+"AAAAwK1Lp9k:APA91bEALzuDFMJkmLT88Kj0Opt3x50GbFNGLIyFRoc1eyA-3DUeLAGwED0kw8Tjp4cWwyohk8MvixAQl3KDQo01toEtjVqWDAnJkDB1mWFktDKTNvT3I7IHhH-0xb2om2WLJHzT3r0p"); // API_KEY : Firebase 내 프로젝트의 서버키		
		JSONObject json  = new JSONObject();
		json.put("to", token);
	
		JSONObject data = new JSONObject();
		data.put("title"  , title);
		data.put("message", content);
		json.put("data"   ,data);
		HttpEntity entity = new HttpEntity(json.toJSONString(), headers);
		return template.exchange("https://fcm.googleapis.com/fcm/send", HttpMethod.POST, entity, String.class);

	}

	
}
