package com.kosmo.room9.service.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.room9.service.Room9DTO;
import com.kosmo.room9.service.Room9MemberDTO;
import com.kosmo.room9.service.impl.MemberServiceImpl;
import com.kosmo.room9.service.impl.Room9ServiceImpl;

@Controller
public class ContactController {
	// Room9ServiceImpl 주입
	@Resource(name="room9ServiceImpl")
	Room9ServiceImpl service;
	
	//멤버의 정보를 뽑기위해 주입
	@Resource(name="memberServiceImpl")
	MemberServiceImpl memberservice;
	
	@RequestMapping("/reservation.room9")
	public String reservation(@RequestParam Map map, Model model) throws Exception{
		Room9DTO record = service.selectOne(map);
		model.addAttribute("record", record);	
		
		String[] guid = record.getR_guid().split(",");
		model.addAttribute("r_guid", guid);
		
		Room9MemberDTO memberinfo = memberservice.userInfoSelect(map);
		//멤버의 이름 뽑기
		model.addAttribute("memeberinfo", memberinfo);
		
		return "reservation.tiles";
	}
	
	@RequestMapping("/reservationProcess.room9")
	public String reservationProcess(@RequestParam Map map, Model model) throws Exception{
		
		System.out.println("예약하기 값 :" + map);
		//예약 내용을 넣어줘야함 
		
		
		
		
		//예약하면 결제 페이지로
		return "redirect:/";
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
	
	@RequestMapping("/suggestionBbs.room9")
	public String suggestionBbs() throws Exception{
		return "suggestionbbs.tiles";
	}
}
