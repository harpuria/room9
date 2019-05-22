package com.kosmo.room9.service.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.room9.service.HostDTO;
import com.kosmo.room9.service.impl.HostServiceImpl;

@Controller
public class HostController {
	// Service 주입
	@Resource(name="hostServiceImpl")
	HostServiceImpl service;
	
	@RequestMapping("/host.room9")
	public String host(@RequestParam Map map, Model model) throws Exception{
		return "host.tiles";
	}
	
	@RequestMapping("/hostRegister.room9")
	public String hostRegister(@RequestParam Map map) throws Exception{
		service.insertHost(map);
		
		return "home.tiles";
	}

	@RequestMapping("/admin_host.room9")
	public String admin_host(@RequestParam Map map, Model model) throws Exception{
		
		List<HostDTO> list = service.selectHostList(map);
		
		model.addAttribute("list", list);
		
		return "admin_host.adminTiles";
	}
	
	
}
