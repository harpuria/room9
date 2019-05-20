package com.kosmo.room9;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosmo.room9.service.Room9DTO;
import com.kosmo.room9.service.impl.Room9ServiceImpl;

@Controller
public class HomeController {

	@Resource(name="room9ServiceImpl")
	Room9ServiceImpl service;
	
	@RequestMapping(value = "/home.room9", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest req) {
		
		// 하나의 모임방 정보가 들어가는 JSONObject 객체
		JSONObject room9Info;
		// 모임은 여러개이기 때문에 배열의 형태로 저장해줄것임.
		JSONArray room9Array = new JSONArray();

		List<Room9DTO> list = service.selectList(null);
		
		for(Room9DTO obj : list) {
			
			room9Info = new JSONObject();
			
			room9Info.put("addr", obj.getR_address());
			room9Info.put("name", obj.getR_name());
			
			room9Array.add(room9Info);
		}
		
		// JSON 파일로 저장하기
		try {
			// 경로는 수정하긴 해야할듯... 위치 찾는게 일인듯
			FileWriter file = new FileWriter("D:\\YHH\\WorkSpace\\Room9\\src\\main\\webapp\\resources\\JSON\\room9.json");
			file.write(room9Array.toJSONString());
			file.flush();
			file.close();
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		
		return "home.tiles";
	}
}
