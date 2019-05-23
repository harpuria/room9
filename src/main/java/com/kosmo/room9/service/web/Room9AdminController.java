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

import com.kosmo.room9.service.HostService;
import com.kosmo.room9.service.MemberService;
import com.kosmo.room9.service.impl.HostServiceImpl;
import com.kosmo.room9.service.impl.MemberServiceImpl;
import com.kosmo.room9.service.impl.Room9AdminServiceImpl;

@Controller
public class Room9AdminController {
	
	@Resource(name="Room9AdminServiceImpl")
	private Room9AdminServiceImpl service;

	@RequestMapping("/admin_main.room9")
	public String admin_main(@RequestParam Map map, Model model, HttpSession session) throws Exception{
		
		map.put("emailid", session.getAttribute("emailid"));
		System.out.println("네이버로그인 했다 : " + session.getAttribute("emailid"));
		
		model.addAttribute("memberCount", service.getMember(map));
		model.addAttribute("hostMemberCount", service.getHostMember(map));
		
		return "admin_main.adminTiles";
	}
	
	@RequestMapping("/admin_calender.room9")
	public String admin_calender() throws Exception{
		return "admin_calender.adminTiles";
	}

	//room9 등록 페이지로 이동
	@RequestMapping("/admin_room9_join.room9")
	public String admin_room9_join(@RequestParam Map map, Model model) throws Exception{
		
		
		
		return "admin_room9_join.adminTiles";
	}
	
	//room9등록 하기
	@RequestMapping("/admin_room9_joinProcess.room9")
	public String admin_room9_joinProcess(@RequestParam Map map,
			@RequestParam(value="AreaType", required=true) List<String> areaType,
			@RequestParam(value="days", required=true) List<String> days,
			@RequestParam(value="opt", required=true) List<String> opt,
			HttpSession session
			) throws Exception{
		
//		List<String> list = new ArrayList<String>();
//		for(String type : areaType)
//		{
//			list.add(type.toString());
//			System.out.println("룸공간타입 : " + type);
//		}
		
		//호스트번호
		map.put("h_no", session.getAttribute("h_no"));
		
		System.out.println("받아온 파라미터 : " + map);
		
		String area = "";
		String day = "";
		String funs ="";
		
		for(String type : areaType)
		{
			System.out.println("룸공간 타입 리스트로 : " + type);
			area += type +" ";
		}
		area = area.trim().replace(" ", ",");
		map.put("areaType", area);
		
		for(String value : days)
		{
			day += value +" ";
		}
		day = day.trim().replace(" ", ",");
		map.put("days", day);
		
		for(String value : opt)
		{
			System.out.println("편의기능 선택 : " + value);
			funs+= value +" ";
		}
		funs = funs.trim().replace(" ", ",");
		map.put("opt", funs);

		String starttime = map.get("start_time").toString();
		String endtime = map.get("end_time").toString();
		
		map.put("totaltime", starttime +" ~ "+endtime );
		
		String[] files = map.get("imgfiles").toString().split(",");
		map.put("r_img_0","null");
		map.put("r_img_1","null");
		map.put("r_img_2","null");
		map.put("r_img_3","null");
		map.put("r_img_4","null");
		for(int i=0; i<files.length; i++)
		{
			map.put("r_img_"+i,files[i]);
		}

		System.out.println("마지막맵 : " + map);
		
		service.Room9MittingInsert(map);
		
		return "forward:/admin_main.room9";
	}
	
	//이미지 업로드
	@ResponseBody
	@RequestMapping("/fileUpload.room9")
	public String upload(MultipartHttpServletRequest mhsr) throws Exception{
		
		//1]서버의 물리적 경로 얻기
		String phisicalPath=mhsr.getServletContext().getRealPath("/upload");
		System.out.println("실질적 경로 : " + phisicalPath);
		MultipartFile upload = mhsr.getFile("imgname");
		
			//2-1] 파일 중복시 이름 변경
			String newFileName=FileUpDownUtils.getNewFileName(phisicalPath, upload.getOriginalFilename());
			File file = new File(phisicalPath+File.separator+newFileName); //파일경로 넣어주기
			
			//파일이 없다면 디렉토리를 생성
		    if (file.exists() == false) {
		        file.mkdirs();
		    }	
			
			//3]업로드 처리		
		    upload.transferTo(file);
			
			//파일과 관련된 정보]
			mhsr.setAttribute("original",upload.getOriginalFilename());
			mhsr.setAttribute("type",upload.getContentType());
			mhsr.setAttribute("size",(int)Math.ceil(upload.getSize()/1024.0));
			
			System.out.println("이미지들 : " + upload.getOriginalFilename());
			
			 return upload.getOriginalFilename();
		
		
	}///////////////
}
