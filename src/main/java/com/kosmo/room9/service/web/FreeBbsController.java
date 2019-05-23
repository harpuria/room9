package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.room9.service.FreeBbsDTO;
import com.kosmo.room9.service.impl.FreeBbsServiceImpl;

@Controller
public class FreeBbsController {
	//주입 끝
	@Resource(name="freeService")
	private FreeBbsServiceImpl freeService;
	
	//전체보기
	@RequestMapping("/freeboard.room9")
	public String selectList(@RequestParam Map map, Model model) throws Exception {
		
		//전체 보기
		List<FreeBbsDTO> list = freeService.selectList(map);
		System.out.println(list.size());
		model.addAttribute("list", list);
		System.out.println("이름 : " + list.get(0).getM_name());
		System.out.println("여기 들어오니?");		
		
		return "/bbs/freebbs.tiles";
	}
	
	//상세보기
	@RequestMapping("/freeView.room9")
	public String selectOne(@RequestParam Map map, Model model) throws Exception{
		System.out.println("들어오니?");
		System.out.println("map:"+map);
		
		FreeBbsDTO cch = freeService.selectOne(map);
		System.out.println(cch.getNo());
		model.addAttribute("cch", cch);
		
		return "/bbs/freebbsview.tiles";
	}
	
	//등록 폼으로 이동
	@RequestMapping(value="/freeWrite.room9", method=RequestMethod.GET)
	public String write() throws Exception {
		System.out.println("들어오냐??");
		
		return "/bbs/freebbsWrite.tiles";
	}
	
	//등록 버튼누를 때
	@RequestMapping(value="/freeWrite.room9", method=RequestMethod.POST)
	public String writeOk(@RequestParam Map map) throws Exception {
		System.out.println("등록 버튼눌렀을때");
		freeService.insert(map);
		
		return "forward:/freeboard.room9";
	}
		
	//수정으로 이동
	@RequestMapping("/freeEdit.room9")
	public String edit(@RequestParam Map map,Model model) throws Exception {
			FreeBbsDTO cch = freeService.selectOne(map);
			model.addAttribute("cch", cch);
			System.out.println("map:"+map);
			return "/bbs/freebbsEdit2.tiles";
	}//
	
	//수정후 수정된  view 보기
	@RequestMapping(value="/freeViewAfterEdit.room9",method=RequestMethod.POST)
	public String editView(@RequestParam Map map,Model model) throws Exception {
		System.out.println("size"+map.size());
		System.out.println("0:"+map);
		System.out.println("1:"+map.get("no").toString());
		System.out.println("2:"+map.get("title").toString());
		System.out.println("3:"+map.get("content"));
		int affected = freeService.update(map);
		System.out.println("affected:"+affected);
		model.addAttribute("succFail", affected);
		FreeBbsDTO cch = freeService.selectOne(map);
		model.addAttribute("cch", cch);
		return "/bbs/freebbsview.tiles";
	}
	
	//삭제
	@RequestMapping("/freeDelete.room9")
	public String delete(@RequestParam Map map,Model model) throws Exception {
			 freeService.delete(map);
			 
			 List<FreeBbsDTO> list = freeService.selectList(map);
			System.out.println(list.size());
			model.addAttribute("list", list);
			
			System.out.println("map:"+map);
			
			return "/bbs/freebbs.tiles";
	}
}