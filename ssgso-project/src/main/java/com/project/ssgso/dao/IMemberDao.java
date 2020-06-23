package com.project.ssgso.dao;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.project.ssgso.dto.MemberDto;

public interface IMemberDao {

	// 회원가입 (Request 파라미터 형식) 서비스와 명령어 같음
	public void memberJoin(HashMap<String, String> paramMap);

	// 회원 로그인 체크
	public boolean loginCheck(MemberDto memberDto);

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
