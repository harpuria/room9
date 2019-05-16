package com.kosmo.room9.service.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.room9.service.CrawlingDataDTO;
import com.kosmo.room9.service.impl.CrawlingDataServiceImpl;
import com.kosmo.room9.service.impl.Room9ServiceImpl;

@Controller
public class CrawlingController {

	// CrawlingDataServiceImpl 주입
	@Resource(name="crawlingDataServiceImpl")
	CrawlingDataServiceImpl service;
	
	// 배치파일 실행하는 메소드 (크롤링)
	@RequestMapping("/batchTest.room9")
	public String batchTest(Model model) throws Exception {
		try {
		    Process p = Runtime.getRuntime().exec("D:\\crawling.bat");
		    
		    BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		    String line = null;
		    
		    while ((line = br.readLine()) != null) {
		      System.out.println(line);
		    }
		  } catch (Exception e) {
		    System.err.println(e);
		  }
		
		// 크롤링한 자료를 가져와서 뿌려줘야함. 그러면 DTO 가 있어야 겟넹.
		List<CrawlingDataDTO> list = service.selectList();
		model.addAttribute("list", list);
		
		return "alliance.tiles";
	}
}
