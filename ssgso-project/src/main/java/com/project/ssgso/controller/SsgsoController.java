package com.project.ssgso.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SsgsoController {
	
	@RequestMapping(value="/ssgso/ssgsoRanking")
	public String ssgsoRanking() {
		return "ssgso/ssgsoRanking";
	}
	
	@RequestMapping(value="/ssgso/ssgsoRankingView")
	public String ssgsoRankingView() {
		return "ssgso/ssgsoRankingView";
	}
	
	@RequestMapping(value="/ssgso/ssgsoThemeRecommend")
	public String ssgsoThemeRecommend() {
		return "ssgso/ssgsoThemeRecommend";
	}
	
	@RequestMapping(value="/ssgso/ssgsoThemeRecommendView")
	public String ssgsoThemeRecommendView() {
		return "ssgso/ssgsoThemeRecommendView";
	}
	
	@RequestMapping(value="/ssgso/reservation")
	public String reservation() {
		return "ssgso/reservation";
	}
	
	@RequestMapping(value="/ssgso/payment")
	public String pqyment(HttpServletRequest request, Model model) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String date = request.getParameter("date");
		model.addAttribute("date", date);
		
		return "ssgso/payment";
	}
	
	@RequestMapping(value="/ssgso/paymentView")
	public String paymentView() {
		return "ssgso/paymentView";
	}
	
	@RequestMapping(value="/ssgso/reservationView")
	public String reservationView() {
		return "ssgso/reservationView";
	}
}
