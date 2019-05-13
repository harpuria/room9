package com.kosmo.room9.service.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.room9.service.impl.MemberServiceImpl;

@Controller
public class SignController {
	
	// MemberServiceImpl 주입
	@Resource(name="memberServiceImpl")
	MemberServiceImpl service;
	
	@RequestMapping("/login.room9")
	public String login() throws Exception{
		return "forward:/WEB-INF/views/sign/login.jsp";
	}
	
	@RequestMapping("/loginProcess.room9")
	public String loginProcess(@RequestParam Map map, HttpSession session) throws Exception{
		
		// 로그인 처리가 성공하면 메인 화면으로, 실패하면 로그인 페이지로 다시 이동
		if(service.isMember(map)) {
			System.out.println("로그인 성공");	
			
			// 로그인 성공하면 세션 영역에 아이디값 저장. (추후 스프링 시큐리티로 바꿀 예정)
			session.setAttribute("emailid", map.get("emailid").toString());
			
			return "home.tiles";
		}
		else {
			System.out.println("로그인 실패");
			return "forward:/WEB-INF/views/sign/login.jsp";
		}
	}
	
	@RequestMapping("/signOnProcess.room9")
	public String signOnProcess(@RequestParam Map map) throws Exception{
		
		// 회원가입이 완료되면 로그인 페이지로 이동
		service.signOn(map);
		
		return "forward:/WEB-INF/views/sign/login.jsp";
	}
	
	@ResponseBody
	@RequestMapping("/idcheck.room9")
	public String idCheck(@RequestParam Map map, Model model) throws Exception {
		boolean check = service.idCheck(map);
		if (check) {
			System.out.println("true");
			return "true";
		} else {
			System.out.println("false");
			return "false";
		}
	}
}
