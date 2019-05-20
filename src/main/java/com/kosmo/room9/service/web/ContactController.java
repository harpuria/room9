package com.kosmo.room9.service.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.room9.service.Room9DTO;
import com.kosmo.room9.service.impl.Room9ServiceImpl;

@Controller
public class ContactController {
	// Room9ServiceImpl 주입
	@Resource(name="room9ServiceImpl")
	Room9ServiceImpl service;
	
	@RequestMapping("/reservation.room9")
	public String reservation(@RequestParam Map map, Model model) throws Exception{
		Room9DTO record = service.selectOne(map);
		model.addAttribute("record", record);	
		return "reservation.tiles";
	}
	@RequestMapping("/question.room9")
	public String question() throws Exception{
		System.out.println("들어옴?");
		return "question.tiles";
	}	
	
	@RequestMapping("/freeBbs.room9")
	public String freeBbs() throws Exception{
		return "freebbs.tiles";
	}
}
