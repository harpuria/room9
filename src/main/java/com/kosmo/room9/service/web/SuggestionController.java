package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.kosmo.room9.service.SuggestionDTO;
import com.kosmo.room9.service.impl.SuggestionImpl;

@Controller
public class SuggestionController {
	@Resource(name="suggestionImpl")
	private SuggestionImpl suggestionImpl;
	//리스트보기
	@RequestMapping("/suggestionBbs.room9")
	public String suggestionBbs(Model model) throws Exception{
		
		List<SuggestionDTO> list=suggestionImpl.selectList(null);
		model.addAttribute("list",list);
		
		return "/bbs/suggestionbbs.tiles";
	}

	// 상세보기]
	@RequestMapping("/suggestionview.room9")
	public String view(@RequestParam Map map, Model model) throws Exception {
	// 서비스 호출]
	SuggestionDTO record = suggestionImpl.selectOne(map);
	// 데이타 저장]
	model.addAttribute("record", record);
	return "/bbs/suggestionView.tiles";
	}
	//삭제하기
	@RequestMapping("/delete.room9")
	public String delete(@RequestParam Map map, Model model) throws Exception {
		int sucFail = suggestionImpl.delete(map);
		
		return "forward:/suggestionBbs.room9";
	}
	//글쓰기
	@RequestMapping("/write.room9")
	public String write()throws Exception{
		
		return "/bbs/suggestionWrite.tiles";
	}
	//글쓰는 페이지로
	@RequestMapping("/WriteProcess.room9")
	public String writepro(@RequestParam Map map) throws Exception{
		suggestionImpl.insert(map);
	
		return "forward:/suggestionBbs.room9";
	}
	//수정하기
	@RequestMapping("/Edit.room9")
	public String edit(@RequestParam Map map, Model model) throws Exception{	
		
		return "/bbs/suggestionEdit.tiles";
	}	
	//목록보기
	@RequestMapping("/list.room9")
	public String list() throws Exception{
		
		return "forward:/suggestionBbs.room9";
	}
	
}
