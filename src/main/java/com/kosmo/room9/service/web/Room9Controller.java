package com.kosmo.room9.service.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.room9.service.Room9DTO;
import com.kosmo.room9.service.impl.Room9ServiceImpl;

@Controller
public class Room9Controller {
	
	// Room9ServiceImpl 주입
	@Resource(name="room9ServiceImpl")
	Room9ServiceImpl service;
	
	@RequestMapping("/open.room9")
	public String open(Model model) throws Exception{
		List<Room9DTO> list = service.selectList(null);
		model.addAttribute("list", list);
		
		List<String> category = new ArrayList<String>();
		
		// 한글로 되어있는 카테고리를 영어로 치환 (jsp 에서 사용하기 위해서)
		for(int i = 0; i < list.size(); i++) {
			
			category.add(list.get(i).getR_category());
			
			/*
			switch(list.get(i).getR_category().split(",")[0]) {
			case "회의실":
				category.add("conference");
				break;
			case "파티룸":
				category.add("party");
				break;
			case "스터디룸":
				category.add("study");
				break;
			case "다목적홀":
				category.add("multi");
				break;
			case "공연장":
				category.add("show");
				break;
			case "연수원":
				category.add("training");
				break;
			case "작업실":
				category.add("work");
				break;
			case "연습실":
				category.add("practice");
				break;
			case "레저시설":
				category.add("leisure");
				break;
			case "카페":
				category.add("cafe");
				break;
			}
			*/
		}
		
		model.addAttribute("category", category);
		
		return "open.tiles";
	}

	@RequestMapping("/home.room9")
	public String home(@RequestParam Map map, Model model) throws Exception{
		return "home.tiles";
	}
}
