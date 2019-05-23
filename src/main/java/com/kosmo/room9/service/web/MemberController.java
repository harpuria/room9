package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.room9.service.ReservationDataDTO;
import com.kosmo.room9.service.Room9MemberDTO;
import com.kosmo.room9.service.impl.MemberServiceImpl;

@Controller
public class MemberController {

	@Resource(name="memberServiceImpl")
	private MemberServiceImpl service;
	
	//아이디 수정할때 정보 불러옴
	@RequestMapping("/UserInfo.room9")
	public String UserInfo(@RequestParam Map map, Model model, HttpSession session ) throws Exception{
		
		//멤버정보를 뿌려주는 곳
		Room9MemberDTO record = service.userInfoSelect(map);
		model.addAttribute("memberRecord",record);
		System.out.println("2");
		
		//예약정보를 뿌려주기
		List<ReservationDataDTO> list = service.ResInfoSelectList(map);
		model.addAttribute("list", list);
		
		
		return "UserInfo.tiles";
	}
	
	@RequestMapping(value="/UserinfoUpdate.room9", method=RequestMethod.POST )
	public String UserinfoUpdate(@RequestParam Map map, Model model, HttpServletResponse resp) throws Exception{
		
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println("넘어온 값 : " + map);
		
		int iSsucFail = 0;
		
		iSsucFail = service.userInfoUpdate(map);
		
		
		if(iSsucFail == 1)
		{
			model.addAttribute("msgType", "infoUpdateComplete");
			model.addAttribute("msg", "비밀번호 수정완료");
			return "common/message.tiles"; 
		}
		else
		{
			model.addAttribute("msgType", "infoUpdateFail");
			model.addAttribute("msg", "비밀번호를 다시 확인해 주세요");
			return "common/message.tiles"; 
		}		
	}
	
}
