package com.kosmo.room9.service.email;

import java.util.Map;

import javax.annotation.Resource;
import javax.mail.BodyPart;
import javax.mail.internet.MimeBodyPart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {
	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;

	@Autowired
    private JavaMailSender mailSender;
	
	@Resource(name="emailService")
	EmailServiceImpl service;
	
	// 비밀번호 보내기
	@RequestMapping("/sendpw.room9")
	public String sendEmailAction(@RequestParam Map<String, Object> paramMap, Model model) throws Exception {
		String e_mail = (String) paramMap.get("emailid");
		String pw = service.getPw(paramMap);

		if (pw != null) {
			// 여기에 메일에 들어갈 내용을 입력한다.
			email.setContent("회원님의 비밀번호는 " + pw + " 입니다."); // 내용
			email.setReceiver(e_mail);
			email.setSubject(e_mail + "님 비밀번호 찾기 메일입니다."); // 제목
			emailSender.SendEmail(mailSender, email); // 보내기!
			
			model.addAttribute("msgType", "mailSendingComplete");
			model.addAttribute("msg", e_mail + " 로 비밀번호 전송이 완료 되었습니다.");
			
			return "/common/message.tiles";
		} else {
			// 메시지 띄우고 해당 페이지 그대로 놔두기
			model.addAttribute("msgType", "mailSendingFail");
			model.addAttribute("msg", e_mail + " 는 회원이 아니거나 전화번호가 잘못 입력되었습니다.");
			
			return "/common/message.tiles";
		}
	}
	
	// 문의 내용 보내기
	@RequestMapping("/sendQuestion.room9")
	public String sendQuestion (@RequestParam Map map, Model model) throws Exception{
		
		String e_mail = map.get("email").toString();
		String name = map.get("name").toString();
		String tel = map.get("tel").toString();
		String title = map.get("title").toString();
		String content = map.get("content").toString();

		String htmlText = name + "님의 문의 사항<br>" + "문의 제목 : " + title + "<br>" + content;
		
		email.setContent(htmlText); // 내용
		email.setReceiver("harpuria87@gmail.com");
		email.setSubject(name + "님의 문의사항입니다"); // 제목
		emailSender.SendEmail(mailSender, email); // 보내기!
		
		
		model.addAttribute("msgType", "mailSendingComplete_q");
		model.addAttribute("msg", "문의사항 전송이 완료되었습니다.");
		
		return "/common/message.tiles";
	}
}
