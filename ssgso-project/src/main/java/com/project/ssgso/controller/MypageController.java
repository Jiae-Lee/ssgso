package com.project.ssgso.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.ssgso.service.SsgsoServiceImpl;

@Controller
public class MypageController {
	
	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
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
	public String mySsgsoList() {
		return "mypage/mySsgsoList";
	}

	@RequestMapping(value="/mypage/mySsgsoWrite")
	public String mySsgsoWrite() {
		return "mypage/mySsgsoWrite";
	}
	
	@RequestMapping(value="/mypage/mySsgsoCreate")
	public String ssgsoCreate(@RequestParam HashMap<String, String> paramMap, HttpSession session) {
		String roadFullAddr = paramMap.get("roadFullAddr");
		String jsonString =  ssgsoServiceImpl.getKakaoApiFromAddress(roadFullAddr);
		
		// x = 경도(longitude), y = 위도(latitude)
		HashMap<String, String> XYMap = ssgsoServiceImpl.getXYMapfromJson(jsonString);
		paramMap.put("latitude", XYMap.get("y"));
		paramMap.put("longitude", XYMap.get("x"));
		paramMap.put("id", (String) session.getAttribute("memberId"));
		
		
		//System.out.println("paramMap::after = " + paramMap);
		ssgsoServiceImpl.createAccomodation(paramMap);
		
		return "redirect:/ssgso/ssgsoThemeRecommend";
	}
}
