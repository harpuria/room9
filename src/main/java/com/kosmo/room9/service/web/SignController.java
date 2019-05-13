package com.kosmo.room9.service.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
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
	
	// 로그인(회원가입) 페이지 이동
	@RequestMapping("/login.room9")
	public String login() throws Exception{
		return "forward:/WEB-INF/views/sign/login.jsp";
	}
	
	// 로그인 처리
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
	
	// 회원가입 처리
	@RequestMapping("/signOnProcess.room9")
	public String signOnProcess(@RequestParam Map map) throws Exception{
		
		// 회원가입이 완료되면 로그인 페이지로 이동
		service.signOn(map);
		
		return "forward:/WEB-INF/views/sign/login.jsp";
	}
	
	// 아이디 중복 체크
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
	
	// 로그아웃
	@RequestMapping("/logout.room9")
	public String logout(HttpSession session) throws Exception {
		// 카카오로 로그인 했을 경우에만 아래 코드 처리
		if(session.getAttribute("accessToken") != null)
			kakaoLogout(session.getAttribute("accessToken").toString());
		
		// 세션영역에서 내용 삭제하기
		session.invalidate();
		return "home.tiles";
	}
	
	// 카카오 연동 처리
	@RequestMapping("/kakaoConnect.room9")
	public String kakaoConnect(@RequestParam Map map, Model model, HttpSession session) throws Exception{
		// REST API 를 호출하기 위한 URL 설정하기]
		StringBuilder urlBuilder = new StringBuilder("https://kapi.kakao.com/v2/user/me");
       
        // 설정한 URL 문자열로  URL 객체 생성]
        URL url = new URL(urlBuilder.toString());
        
        // URL 을 통해서 HTTP 에 연결]
        HttpURLConnection conn = (HttpURLConnection)url.openConnection();
     	// 전송방식(Method) 설정
        conn.setRequestMethod("GET"); 
        // 요청 헤더 설정
        // 접근토큰은 로그인할 때마다 달라지기 때문에 파라미터로 받아와야함.
        String accessToken = map.get("accessToken").toString();
        session.setAttribute("accessToken", accessToken);
        System.out.println(accessToken);
        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
        
        // 응답받은 내용 출력하기
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
        
        String fullRequest = sb.toString();
        
        String kakaoId = fullRequest.substring(fullRequest.indexOf("id") + 4, fullRequest.indexOf(","));
        
        model.addAttribute("kakaoid", kakaoId);
        map.put("kakaoid", kakaoId);
        map.put("emailid", session.getAttribute("emailid").toString());
        service.kakaoConnect(map);
        
        return "forward:/WEB-INF/views/sign/login.jsp";
	}
	
	// 카카오 로그인 처리
	@RequestMapping("/kakaoLogin.room9")
	public String kakaoLogin(@RequestParam Map map, Model model, HttpSession session) throws Exception{
		
		// REST API 를 호출하기 위한 URL 설정하기]
		StringBuilder urlBuilder = new StringBuilder("https://kapi.kakao.com/v2/user/me");
       
        // 설정한 URL 문자열로  URL 객체 생성]
        URL url = new URL(urlBuilder.toString());
        
        // URL 을 통해서 HTTP 에 연결]
        HttpURLConnection conn = (HttpURLConnection)url.openConnection();
     	// 전송방식(Method) 설정
        conn.setRequestMethod("GET"); 
        // 요청 헤더 설정
        // 접근토큰은 로그인할 때마다 달라지기 때문에 파라미터로 받아와야함.
        String accessToken = map.get("accessToken").toString();
        session.setAttribute("accessToken", accessToken);
        System.out.println(accessToken);
        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
        
        // 응답받은 내용 출력하기
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
        
        String fullRequest = sb.toString();
        
        String kakaoId = fullRequest.substring(fullRequest.indexOf("id") + 4, fullRequest.indexOf(","));
        System.out.println(kakaoId);
        
        model.addAttribute("kakaoid", kakaoId);
        map.put("kakaoid", kakaoId);
        
        System.out.println(service.kakaoLogin(map));
        
        // 만약 카카오로 로그인이 성공했다면? 테이블에 해당 카카오 아이디가 있으면 테이블에 등록된 유저로 로그인이 될 수 있게하면 될듯함.
		if(service.kakaoLogin(map) != null) {
			System.out.println("카카오 로그인 체크 : " + service.kakaoLogin(map));
			
			// 해당 카카오 아이디에 속한 이메일 주소를 가져와야함. 쓔바 장난??
			String emailId = service.kakaoLogin(map);
			model.addAttribute("emailid", emailId);
			session.setAttribute("emailid", emailId);
			
			return "home.tiles";	
		}
		else {
			model.addAttribute("msgType", "kakaoLoginFail");
			model.addAttribute("msg", "카카오 로그인 실패 / 회원 테이블과 카카오 ID가 연동되지 않았습니다.");
			
			kakaoLogout(accessToken);
			
			return "/common/message.tiles";
		}
	}
	
	// 카카오 로그아웃 처리 (별도의 메소드)
	void kakaoLogout(String accessToken) throws Exception {
		// REST API 사용을 위한 Builder 객체 생성
		StringBuilder urlBuilder = new StringBuilder("https://kapi.kakao.com/v1/user/logout");
		// 위 Builder 객체를 통해서 URL 객체 셍성
        URL url = new URL(urlBuilder.toString());
        // 위 Url 객체를 통해서 HttpUrlConnection 객체 생성 (연결)
        HttpURLConnection conn = (HttpURLConnection)url.openConnection();
        // 요청방식 설정
        conn.setRequestMethod("POST"); 
        
        // 요청 헤더 추가
        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        
        System.out.println("Response code: " + conn.getResponseCode());
	}
}
