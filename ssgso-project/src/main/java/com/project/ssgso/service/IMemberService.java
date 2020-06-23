package com.project.ssgso.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.project.ssgso.dto.MemberDto;


public interface IMemberService {

	// 회원가입
	public void memberJoin(HashMap<String, String> paramMap);

	// 회원 로그인 체크
	public boolean loginCheck(MemberDto memberDto, HttpSession session);

	// 회원 로그인 정보
	public MemberDto viewMember(MemberDto memberDto);

	// 아이디 중복 체크
	public int idCheck(MemberDto memberDto);

	// 회원 로그아웃
	public void logout(HttpSession session);

	// 아이디 찾기
	public String getId(HashMap<String, Object> paramMap);

	// 패스워드 찾기
	public String getPassword(HashMap<String, Object> paramMap);
}
