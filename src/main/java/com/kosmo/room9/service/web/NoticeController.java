package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.room9.service.NoticeDTO;
import com.kosmo.room9.service.impl.NoticeServiceImpl;

@Controller
public class NoticeController {
	
	// Room9ServiceImpl 주입
	@Resource(name="noticeServiceImpl")
	NoticeServiceImpl service;
	
	@RequestMapping("/notice.room9")
	public String notice(Model model,Map map)throws Exception{
		List<NoticeDTO> list = service.noticeList(map);
		model.addAttribute("list",list);
		return "notice.tiles";
	}
}
