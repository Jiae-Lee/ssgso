package com.project.ssgso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	// 로그인 폼
	@RequestMapping(value = "/login/loginForm")
	public String loginForm() {
		return "login/loginForm";
	}

	// 아이디 찾기
	@RequestMapping(value = "/login/searchId")
	public String searchId() {
		return "login/searchId";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/login/searchPw")
	public String searchPw() {
		return "login/searchPw";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/login/joinHome")
	public String joinHome() {
		return "login/joinHome";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/login/joinCustomer")
	public String joinCustomer() {
		return "login/joinCustomer";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "/login/joinPartner")
	public String joinPartner() {
		return "login/joinPartner";
	}

	// 회원가입완료(joingSuccess) -> 파라미터 넘기기

}
