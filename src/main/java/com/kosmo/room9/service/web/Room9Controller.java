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
		
		List<String> tag1 = new ArrayList<String>();
		List<String> tag2 = new ArrayList<String>();
		List<String> tag3 = new ArrayList<String>();
		
		// 한글로 되어있는 카테고리를 영어로 치환 (jsp 에서 사용하기 위해서)
		for(int i = 0; i < list.size(); i++) {
			tag1.add(list.get(i).getR_tag_1());
			tag2.add(list.get(i).getR_tag_2());
			tag3.add(list.get(i).getR_tag_3());
		}
		
		model.addAttribute("tag1", tag1);
		model.addAttribute("tag2", tag2);
		model.addAttribute("tag3", tag3);
		
		return "open.tiles";
	}

	@RequestMapping("/home.room9")
	public String home(@RequestParam Map map, Model model) throws Exception{
		return "home.tiles";
	}
}
