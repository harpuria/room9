package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.room9.service.HostDTO;
import com.kosmo.room9.service.MemberInfoDTO;
import com.kosmo.room9.service.MemberInfoService;
import com.kosmo.room9.service.impl.HostServiceImpl;

@Controller
public class MemberInfoContoroller {
	// Service 주입
	@Resource(name="memberInfoServiceImpl")
	MemberInfoService service;
	
	@RequestMapping("/admin_member.room9")
	public String memberInfo(@RequestParam Map map, Model model) throws Exception{
		
		List<MemberInfoDTO> list = service.selectMemberInfoList(map);
		
		model.addAttribute("list", list);
		
		return "admin_member.adminTiles";
	}
	
}
