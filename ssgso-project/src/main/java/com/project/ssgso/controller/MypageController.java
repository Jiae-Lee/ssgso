package com.project.ssgso.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.dto.RoomDto;
import com.project.ssgso.service.SsgsoServiceImpl;


@Controller
public class MypageController {
	
	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
	@RequestMapping(value="/mypage/map")
	public String getMap() {
		return "mypage/map";
	}
	
	@RequestMapping(value="/mypage/myReservation")
	public String myReservation() {
		return "mypage/myReservation";
	}

	@RequestMapping(value="/mypage/myOnetoone")
	public String myOnetoOne() {
		return "mypage/myOnetoone";
	}

	@RequestMapping(value="/mypage/myInfo")
	public String myInfo() {
		return "mypage/myInfo";
	}

	@RequestMapping(value="/mypage/mySsgsoList")
	public String mySsgsoList(Model model) {
		
		List <AccomodationDto> AccomodationDtoList =
				ssgsoServiceImpl.selectAccomodationAllList();
		model.addAttribute("list",AccomodationDtoList);
		return "mypage/mySsgsoList";
	}

	@RequestMapping(value="/mypage/mySsgsoListView")
	public String mySsgsoListView(@RequestParam ("ac_no") int ac_no, Model model) {
		AccomodationDto AccomodationDto= ssgsoServiceImpl.selectAccomodation(ac_no);
		model.addAttribute("AccomodationDto", AccomodationDto);
		
		List <RoomDto> RoomDtoList = ssgsoServiceImpl.selectRoomAllList();
		model.addAttribute("list",RoomDtoList); 
		return "mypage/mySsgsoListView";
	}
	
	@RequestMapping(value="/mypage/mySsgsoWrite")
	public String mySsgsoWrite(Model model, HttpSession session) {
		System.out.println("memNo = " + session.getAttribute("memNo").toString());
		
		List <CategoryDto> categoryDtoList = ssgsoServiceImpl.selectCategoryAllList();
		model.addAttribute("list", categoryDtoList);
		
		return "mypage/mySsgsoWrite";
	}
	

	@RequestMapping(value="/mypage/mySsgsoCreate")
	public String ssgsoCreate(@RequestParam HashMap<String, String> paramMap, HttpSession session, Model model) {
		System.out.println("paramMap::before = " + paramMap);
		
		String roadFullAddr = paramMap.get("roadFullAddr");
		String jsonString =  ssgsoServiceImpl.getKakaoApiFromAddress(roadFullAddr);
		System.out.println("jsonString = " + jsonString );
		
		System.out.println(paramMap.get("roadFullAddr"));
		
		// x = 경도(longitude), y = 위도(latitude)
		HashMap<String, String> XYMap = ssgsoServiceImpl.getXYMapfromJson(jsonString);
		paramMap.put("latitude", XYMap.get("y"));
		paramMap.put("longitude", XYMap.get("x"));
		paramMap.put("mem_no", session.getAttribute("memNo").toString());
		
		
		System.out.println("paramMap::after = " + paramMap);
		System.out.println("category = " + paramMap.get("category"));
		
		ssgsoServiceImpl.createAccomodation(paramMap);

		System.out.println("createAccomodation 완료!!!!!");
		model.addAttribute("name", paramMap.get("name"));
		model.addAttribute("roadFullAddr", roadFullAddr);
		return "mypage/ssgsoHashtagWrite";
	}
}
