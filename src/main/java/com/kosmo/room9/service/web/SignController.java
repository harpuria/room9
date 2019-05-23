package com.kosmo.room9.service.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.room9.service.impl.HostServiceImpl;
import com.kosmo.room9.service.impl.MemberServiceImpl;

@Controller
public class SignController {
	
	// MemberServiceImpl 주입
	@Resource(name="memberServiceImpl")
	MemberServiceImpl service;

	// HostServiceImpl 주입
 	@Resource(name="hostServiceImpl")
	HostServiceImpl hostService;
	
	// 로그인(회원가입) 페이지 이동
	@RequestMapping("/login.room9")
	public String login() throws Exception{
		return "forward:/WEB-INF/views/sign/login.jsp";
	}
	
	// 로그인 처리
	@RequestMapping("/loginProcess.room9")
	public String loginProcess(@RequestParam Map map, HttpSession session, Model model) throws Exception{
		
		// 로그인 한 유저가 호스트인지 아닌지 확인 (로그인 자체에 영향은 없음)
		if(hostService.isHost(map)) {
			session.setAttribute("isHost", "true");
			session.setAttribute("h_no", hostService.selecthost_no(map));
			System.out.println("호스트번호 : " + hostService.selecthost_no(map));
		}
		else{
			session.setAttribute("isHost", "false");
		}
		
		System.out.println("로그인할때 값 : " + map);
		
		
		
		// 로그인 처리가 성공하면 메인 화면으로, 실패하면 로그인 페이지로 다시 이동
		if(service.isMember(map)) {
			// 리캡챠에 아무런 정보가 없다면? 한번도 틀리지 않고 로그인 성공했다는 뜻
			if(map.get("recaptcha") == null) {
				// 로그인 성공하면 세션 영역에 아이디값 저장. (추후 스프링 시큐리티로 바꿀 예정)
				session.setAttribute("emailid", map.get("emailid").toString());
				System.out.println("1");
				return "home.tiles";
			}
			else {
				// 리캡챠에 무슨 정보가 있다는 소리는? 한번 틀린 뒤에 로그인 성공하거나 실패했다는 뜻
				if(map.get("recaptcha").toString().equals("true")) {
					session.setAttribute("emailid", map.get("emailid").toString());
					System.out.println("2");
					return "home.tiles";
				}
				else {
					model.addAttribute("recaptchaFail", "true");
					System.out.println("3");
					return "forward:/WEB-INF/views/sign/login.jsp";
				}
			}
		}
		else {
			model.addAttribute("recaptchaFail", "true");
			System.out.println("4");
			return "forward:/WEB-INF/views/sign/login.jsp";
		}
	}
	
	// 회원가입 처리
	@RequestMapping("/signOnProcess.room9")
	public String signOnProcess(@RequestParam Map map) throws Exception{
		
		//들어오는 아이디 값을 무조건 소문자로 변경
		//map.put("emailid", map.get("emailid").toString().toLowerCase());
		
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
	
	
	//네이버 로그인폼으로 이동
	@RequestMapping("naverlogin.room9")
	public String naverlogin(HttpSession session, Model model) throws Exception{
		
		 String clientId = "pRZYTKjRwkfSHx7WEcm5";//애플리케이션 클라이언트 아이디값";
	     String redirectURI = URLEncoder.encode("http://localhost:8080/room9/naverprocess.room9", "UTF-8");
	     SecureRandom random = new SecureRandom();
	     String state = new BigInteger(130, random).toString();
	     String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	     apiURL += "&client_id=" + clientId;
	     apiURL += "&redirect_uri=" + redirectURI;
	     apiURL += "&state=" + state;
	     session.setAttribute("state", state);
	     model.addAttribute("apiURL", apiURL);
	     
		
		return "sign/naverlogin.tiles";
	}
	
	//네이버 로그인 프로세스
	@RequestMapping("naverprocess.room9")
	public String naverloginprocess(HttpServletRequest request, HttpSession session) throws Exception{
		
		String clientId = "pRZYTKjRwkfSHx7WEcm5";//애플리케이션 클라이언트 아이디값";
	    String clientSecret = "lQvikAtJji";//애플리케이션 클라이언트 시크릿값";
	    String code = request.getParameter("code");
	    String state = request.getParameter("state");
	    String redirectURI = URLEncoder.encode("http://localhost:8080/room9/naverprocess.room9", "UTF-8");
	    String apiURL;
	    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
	    apiURL += "client_id=" + clientId;
	    apiURL += "&client_secret=" + clientSecret;
	    apiURL += "&redirect_uri=" + redirectURI;
	    apiURL += "&code=" + code;
	    apiURL += "&state=" + state;
	    
	    System.out.println("apiURL="+apiURL);
		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			int responseCode = con.getResponseCode();
			BufferedReader br;
			System.out.println("responseCode=" + responseCode);
			
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer res = new StringBuffer();
			
			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine);
			}
			br.close();
			if (responseCode == 200) {
				System.out.println(res.toString());
				String str = res.toString();
				int start = str.indexOf("\":\"");
				int end = str.indexOf("\",\"refresh_token\"");

				session.setAttribute("access_token", str.substring(start+3, end));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return "forward:naverConnect.room9";
		
	}
	
	//네이버랑 연동해주기
	@RequestMapping("naverConnect.room9")
	public String personinfo(HttpServletRequest request, Model model, HttpSession session, Map map) throws Exception{
		
		String naverinfo = "";
		
		String token = session.getAttribute("access_token").toString();// 네이버 로그인 접근 토큰;
        String header = "Bearer " + token; // Bearer 다음에 공백 추가
        try {
            String apiURL = "https://openapi.naver.com/v1/nid/me";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", header);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
            naverinfo = response.toString();
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
        int idindex = naverinfo.indexOf("id\":\"");
        int idendindex = naverinfo.indexOf("\",\"age");
        
        int nameindex = naverinfo.indexOf("\"name\":\"");
        int nameendindex = naverinfo.indexOf("\"}");
        
        int emailindex = naverinfo.indexOf("\"email\":\"");
        int emailendindex = naverinfo.indexOf("\",\"name\"");
       
        String navername = naverinfo.substring(nameindex+8, nameendindex);
        String naverid = naverinfo.substring(idindex+5, idendindex);
        String naveremail = naverinfo.substring(emailindex+9, emailendindex);
        
        session.setAttribute("naverid", naverid);
        model.addAttribute("navername", navername);
        model.addAttribute("naveremail", naveremail);
        map.put("naveremail", naveremail);
        map.put("naverid", naverid);
        map.put("navername", navername);
        
        System.out.println("네이버 아이디 : " + naverid);
        System.out.println("네이버 이메일 : " + naveremail);
        
       //기존에 있던 회원에 네이버 아이디만 추가(연동성공)
       int isSuccess = service.naverConnet(map);   
       if(isSuccess == 1 ) // 연동성공
       {
    	   model.addAttribute("isSuccess", isSuccess);//1
    	   model.addAttribute("naverMessage", "네이버와 연동됨");
       }
       else //이미 연동되어있어서 안됨
       {
    	   model.addAttribute("isSuccess", isSuccess);//0
    	   model.addAttribute("naverMessage", "이미 연동되었거나 연동 할 아이디가 없습니다.");
       }
	   
	   String naveremailid = service.naverLogin(map);
	   session.setAttribute("emailid", naveremailid);
	   model.addAttribute("emailid", naveremailid);
	   
	// 로그인 한 유저가 호스트인지 아닌지 확인 (로그인 자체에 영향은 없음)
	if(hostService.isHost(map)) {
		session.setAttribute("isHost", "true");
		session.setAttribute("h_no", hostService.selecthost_no(map));
	}
	else{
		session.setAttribute("isHost", "false");
	}
	   
	   
	   
	   return "home.tiles";
       
	}
	
	//연동해제
	@RequestMapping("naverdisConnect.room9")
	public String naverLogout(HttpSession session, HttpServletRequest request) throws Exception{
		
		//연동해제
//		String accessToken = session.getAttribute("access_token").toString();// 네이버 로그인 접근 토큰;
//		System.out.println("토큰 : " + accessToken);
//		
//		String clientId = "pRZYTKjRwkfSHx7WEcm5";//애플리케이션 클라이언트 아이디값";
//	    String clientSecret = "lQvikAtJji";//애플리케이션 클라이언트 시크릿값"
//	    
//	    String apiURL;
//	    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=delete&";
//	    apiURL += "client_id=" + clientId;
//	    apiURL += "&client_secret=" + clientSecret;
//	    apiURL += "&access_token=" + accessToken;
//	    apiURL += "&service_provider=NAVER";
//	    try {
//            URL url = new URL(apiURL);
//            HttpURLConnection con = (HttpURLConnection)url.openConnection();
//            con.setRequestMethod("GET");
//            int responseCode = con.getResponseCode();
//            BufferedReader br;
//            if(responseCode==200) { // 정상 호출
//                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
//            } else {  // 에러 발생
//                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
//            }
//            String inputLine;
//            StringBuffer response = new StringBuffer();
//            while ((inputLine = br.readLine()) != null) {
//                response.append(inputLine);
//            }
//            br.close();
//            System.out.println(response.toString());
//            
//        } catch (Exception e) {
//            System.out.println(e);
//        }
	   
		return "home.tiles";
	}
}
