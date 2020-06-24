package com.project.ssgso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	
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
}
