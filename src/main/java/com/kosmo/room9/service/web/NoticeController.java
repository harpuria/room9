package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.javassist.SerialVersionUID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.kosmo.room9.service.NoticeDTO;
import com.kosmo.room9.service.impl.NoticeServiceImpl;

@Controller
public class NoticeController {
	
	// Room9ServiceImpl 주입!
	@Resource(name="noticeServiceImpl")
	NoticeServiceImpl service;

	//유저 공지사항 리스트
	@RequestMapping("/notice.room9")
	public String notice(Model model,Map map)throws Exception{
		List<NoticeDTO> list = service.noticeList(map);
		model.addAttribute("list",list);
		return "notice.tiles";
	}
	//유저공지사항 상세페이지로 이동
	@RequestMapping("/notice_View.room9")
	public String notice_View(@RequestParam Map map,Model model) throws Exception{
		
		NoticeDTO record=service.selectOne(map);
		//데이타 저장]
		//줄바꿈 처리
		record.setR_content(record.getR_content().replace("\r\n","<br/>"));
		model.addAttribute("record",record);
		return "notice_View.tiles";
	}
	//관리자 공지사항
	//목록
	@RequestMapping("/admin_notice.room9")
	public String admin_notice(@RequestParam Map map, Model model) throws Exception{
		List<NoticeDTO> list = service.noticeList(map);
		model.addAttribute("list",list);
		return "admin_notice.adminTiles";
	}
	//입력페이지로 이동
	@RequestMapping("/admin_WriteNotice.room9")
	public String admin_WriteNotice() throws Exception{
		return "admin_WriteNotice.adminTiles";
	}
	//등록
	@RequestMapping("/notice_WriteOK.room9")
	public String notice_WriteOK(@RequestParam Map map) throws Exception{
		service.insert(map);
		return "forward:/admin_notice.room9";
	}
	//상세페이지로 이동
	@RequestMapping("/admin_WriteView.room9")
	public String admin_WriteView(@RequestParam Map map,Model model) throws Exception{
		
		NoticeDTO record=service.selectOne(map);
		//데이타 저장]
		//줄바꿈 처리
		record.setR_content(record.getR_content().replace("\r\n","<br/>"));
		model.addAttribute("record",record);
		return "admin_WriteView.adminTiles";
	}
	//수정폼으로 이동 및 수정 처리]
	@RequestMapping("/admin_UpdateNotice.room9")
	public String edit(@RequestParam Map map,HttpServletRequest req,Model model) throws Exception{
		//서비스 호출]
		NoticeDTO record=service.selectOne(map);
		//데이타 저장]
		model.addAttribute("record", record);
		//수정 폼으로 이동]
		return "admin_UpdateNoticeOK.adminTiles";		
	}////////////////////////////////////
	
	@RequestMapping("/notice_EditOK.room9")
	public String editOK(@RequestParam Map map,HttpServletRequest req,Model model) throws Exception{
		//수정처리후 메시지 뿌려주는 페이지로 이동
		service.update(map);
		
		return "forward:/admin_WriteView.room9";
	}
	
	
	//삭제
	@RequestMapping("/admin_DeleteNotice.room9")
	public String admin_DeleteNotice(@RequestParam Map map)throws Exception{
		
		//서비스 호출]
		service.delete(map);	
		//뷰정보 반환]
		return"forward:/admin_notice.room9";
	}	
	
}
