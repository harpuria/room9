package com.kosmo.room9.service.web;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.kosmo.room9.service.impl.Room9AdminServiceImpl;

@Controller
public class Room9AdminController {
	
	@Resource(name="Room9AdminServiceImpl")
	private Room9AdminServiceImpl service;

	@RequestMapping("/admin_main.room9")
	public String admin_main(@RequestParam Map map, Model model, HttpSession session) throws Exception{
		
		map.put("emailid", session.getAttribute("emailid"));
		System.out.println("네이버로그인 했다 : " + session.getAttribute("emailid"));
		
		int h_no = service.Room9AdminHostNo(map);
		model.addAttribute("h_no", h_no);
		System.out.println("h_no : " + h_no);
		
		return "admin_main.adminTiles";
	}
	
	@RequestMapping("/admin_host.room9")
	public String admin_host(@RequestParam Map map, Model model) throws Exception{
		return "admin_host.adminTiles";
	}
	
	@RequestMapping("/admin_calender.room9")
	public String admin_calender(@RequestParam Map map, Model model) throws Exception{
		return "admin_calender.adminTiles";
	}
	
	@RequestMapping("/admin_member.room9")
	public String admin_member(@RequestParam Map map, Model model) throws Exception{
		return "admin_member.adminTiles";
	}
	
	@RequestMapping("/admin_notice.room9")
	public String admin_notice(@RequestParam Map map, Model model) throws Exception{
		return "admin_notice.adminTiles";
	}
	
	//room9 등록 페이지로 이동
	@RequestMapping("/admin_room9_join.room9")
	public String admin_room9_join(@RequestParam Map map, Model model) throws Exception{
		
		int h_no = service.Room9AdminHostNo(map);
		model.addAttribute("h_no", h_no);
		
		return "admin_room9_join.adminTiles";
	}
	
	//room9등록 하기
	@RequestMapping("/admin_room9_joinProcess.room9")
	public String admin_room9_joinProcess(@RequestParam Map map,
			@RequestParam(value="AreaType", required=true) List<String> areaType,
			@RequestParam(value="days", required=true) List<String> days,
			@RequestParam(value="opt", required=true) List<String> opt,
			@RequestParam(value="imgname") List<MultipartFile> imgs
			) throws Exception{
		
//		List<String> list = new ArrayList<String>();
//		for(String type : areaType)
//		{
//			list.add(type.toString());
//			System.out.println("룸공간타입 : " + type);
//		}
		System.out.println("받아온 파라미터 : " + map);
		
		for(String type : areaType)
		{
			System.out.println("룸공간 타입 리스트로 : " + type);
		}
		map.put("areaType", areaType);
		
		for(String day : days)
		{
			System.out.println("선택 요일 : " + day);
		}
		map.put("days", days);
		for(String value : opt)
		{
			System.out.println("편의기능 선택 : " + value);
		}
		map.put("opt", opt);
		
		for(MultipartFile img : imgs)
		{
			System.out.println("이미지들:" + img.getOriginalFilename() );
		}

		
//		service.Room9MittingInsert(map);
		
		return "forward:/admin_main.room9";
	}
	
	//이미지 업로드
	@ResponseBody
	@RequestMapping("/fileUpload.room9")
	public String upload(MultipartHttpServletRequest mhsr) throws Exception{
		
		//1]서버의 물리적 경로 얻기
		String phisicalPath=mhsr.getServletContext().getRealPath("/upload");
		System.out.println("실질적 경로 : " + phisicalPath);
		List<MultipartFile> upload = mhsr.getFiles("imgname");
		
		for(MultipartFile imgfile : upload)
		{
			//2-1] 파일 중복시 이름 변경
			String newFileName=FileUpDownUtils.getNewFileName(phisicalPath, imgfile.getOriginalFilename());
			File file = new File(phisicalPath+File.separator+newFileName); //파일경로 넣어주기
			
			//파일이 없다면 디렉토리를 생성
		    if (file.exists() == false) {
		        file.mkdirs();
		    }	
			
			//3]업로드 처리		
		    imgfile.transferTo(file);
			
	
			//파일과 관련된 정보]
			mhsr.setAttribute("original",imgfile.getOriginalFilename());
			mhsr.setAttribute("type",imgfile.getContentType());
			mhsr.setAttribute("size",(int)Math.ceil(imgfile.getSize()/1024.0));
			
			System.out.println("이미지들 : " + imgfile.getOriginalFilename());
			
			 return imgfile.getOriginalFilename();
		}
		
		return "redirect:/";
		
	}///////////////
}
