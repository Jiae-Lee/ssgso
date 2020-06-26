package com.project.ssgso.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.RoomDto;
import com.project.ssgso.service.SsgsoServiceImpl;

@Controller
public class SsgsoController {
	
	private static final Logger logger = LoggerFactory.getLogger(SsgsoController.class);
	
	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
	//상위 랭킹 숙소 전체 조회
	@RequestMapping(value="/ssgso/ssgsoRanking")
	public String ssgsoRanking(Model model) {
		
		List <AccomodationDto> AccomodationDtoList =
				ssgsoServiceImpl.selectAccomodationAllList();
		model.addAttribute("list",AccomodationDtoList);
		return "ssgso/ssgsoRanking";
	}
	
	//상위 랭킹 숙소 상세 조회
	@RequestMapping(value="/ssgso/ssgsoRankingView")
	public String ssgsoRankingView(
			@RequestParam ("ac_no") int ac_no, Model model) {
		System.out.println("ac_no=[" + ac_no + "]");
		
		AccomodationDto AccomodationDto=
				ssgsoServiceImpl.selectAccomodation(ac_no);
		model.addAttribute("AccomodationDto", AccomodationDto);
		
		List <RoomDto> RoomDtoList =
				ssgsoServiceImpl.selectRoomAllList();
		model.addAttribute("list",RoomDtoList);
		return "ssgso/ssgsoRankingView";
	}
	
	//추천 테마 숙소 전체 조회
	@RequestMapping(value="/ssgso/ssgsoThemeRecommend")
	public String ssgsoThemeRecommend(Model model) {
		
		List <AccomodationDto>  AccomodationDtoList =
				ssgsoServiceImpl.selectAccomodationAllList();
		model.addAttribute("list",AccomodationDtoList);
		return "ssgso/ssgsoThemeRecommend";
	}
	
	//추천 테마 숙소 상세 조회
	@RequestMapping(value="/ssgso/ssgsoThemeRecommendView")
	public String ssgsoThemeRecommendView(
			@RequestParam ("ac_no") int ac_no, Model model) {
		System.out.println("ac_no=[" + ac_no + "]");
		
		AccomodationDto AccomodationDto=
				ssgsoServiceImpl.selectAccomodation(ac_no);
		model.addAttribute("AccomodationDto", AccomodationDto);
		
		List <RoomDto> RoomDtoList =
				ssgsoServiceImpl.selectRoomAllList();
		model.addAttribute("list",RoomDtoList);
		return "ssgso/ssgsoRankingView";
	}
	
	// 예약페이지(체크인,체크아웃,인원 정하기)
	@RequestMapping(value="/ssgso/reservation")
	public String reservation(@RequestParam ("ac_no") int ac_no, Model model) {
		System.out.println("ac_no=[" + ac_no + "]");
		
		AccomodationDto AccomodationDto=
				ssgsoServiceImpl.selectAccomodation(ac_no);
		model.addAttribute("AccomodationDto", AccomodationDto);
		
		List <RoomDto> RoomDtoList =
				ssgsoServiceImpl.selectRoomAllList();
		model.addAttribute("list",RoomDtoList);	
		
		return "ssgso/reservation";
	}
	
	@RequestMapping(value="/ssgso/payment")
	public String pqyment(@RequestParam ("ac_no") int ac_no, HttpServletRequest request, Model model) {
		
		System.out.println("ac_no=[" + ac_no + "]");
		
		AccomodationDto AccomodationDto=
				ssgsoServiceImpl.selectAccomodation(ac_no);
		model.addAttribute("AccomodationDto", AccomodationDto);
		
//		List <RoomDto> RoomDtoList =
//				ssgsoServiceImpl.selectRoomAllList();
//		model.addAttribute("list",RoomDtoList);	
		
		model.addAttribute("date_from", request.getParameter("date_from"));	
		model.addAttribute("date_to",request.getParameter("date_to"));	
		model.addAttribute("person",request.getParameter("person"));	
		
//		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//		String date = request.getParameter("date");
//		model.addAttribute("date", date);
		
		return "ssgso/payment";
	}
	
	@RequestMapping(value="/ssgso/paymentView")
	public String paymentView(@RequestParam ("ac_no") int ac_no, HashMap<String, String> paramMap, HttpServletRequest request, HttpSession session, Model model) {
		
		// 예약 INSERT
		paramMap.put("memNo", session.getAttribute("memNo")+"");
		logger.info("memNo=["+session.getAttribute("memNo")+"]");
		
		model.addAttribute("ac_no", request.getParameter("ac_no"));
		model.addAttribute("date_from", request.getParameter("date_from"));	
		model.addAttribute("date_to",request.getParameter("date_to"));	
		model.addAttribute("person",request.getParameter("person"));
		AccomodationDto AccomodationDto =
				ssgsoServiceImpl.selectAccomodation(ac_no);
		model.addAttribute("AccomodationDto", AccomodationDto);
		
		ssgsoServiceImpl.insertBooking(paramMap); // 지금 여기가 오류
		logger.info("paramMap=["+paramMap+"]");
				
		
		return "ssgso/paymentView";
	}
	
	
}
