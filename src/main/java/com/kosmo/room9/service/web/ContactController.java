package com.kosmo.room9.service.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	@RequestMapping("/notice.room9")
	public String notice() throws Exception{
		
		return "notice.tiles";
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
