package com.project.ssgso.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ssgso.dao.MemberDaoImpl;
import com.project.ssgso.dto.MemberDto;

@Service // 서비스임을 선언, 특별한 기능은 없다. - 현재 클래스를 스프링에서 관리하는 service bean으로 등록
public class MemberServiceImpl implements IMemberService {

	@Autowired // 자동 주입 - 객체를 따로 만들지 않고 불러와 사용할 수 있다.
	private MemberDaoImpl memberDaoImpl;

	// 회원가입
	@Override
	public void memberJoin(HashMap<String, String> paramMap) {
		memberDaoImpl.memberJoin(paramMap);
	}

	// 회원 로그인 체크
	@Override
	public boolean loginCheck(MemberDto memberDto, HttpSession session) {
		boolean result = memberDaoImpl.loginCheck(memberDto);
		if (result) { // true일 경우 세션에 등록
			MemberDto memberDto2 = viewMember(memberDto);
			// 세션 변수 등록
			session.setAttribute("memNo", memberDto2.getMem_no());
			System.out.println("memNo"+memberDto2.getMem_no());	
			session.setAttribute("memberId", memberDto2.getMember_id());
			System.out.println("서비스id"+memberDto2.getMember_id());
			session.setAttribute("memberName", memberDto2.getName());
			System.out.println("서비스no"+memberDto2.getName());
			session.setAttribute("memberGrade", memberDto2.getGrade());
			System.out.println("서비스grade"+memberDto2.getGrade());	
			session.setAttribute("memberEmail", memberDto2.getEmail());
			System.out.println("서비스email"+memberDto2.getEmail());
			session.setAttribute("memberCorporate_no", memberDto2.getCorporate_no());
			System.out.println("서비스"+memberDto2.getCorporate_no());
			session.setAttribute("memberGender", memberDto2.getGender());
			System.out.println("서비스gender"+memberDto2.getGender());
			session.setAttribute("memberCreate_date", memberDto2.getCreate_date());
			System.out.println("서비스"+memberDto2.getCreate_date());
		}
		return result;
	}

	// 회원 로그인 정보
	@Override
	public MemberDto viewMember(MemberDto memberDto) {
		
		return memberDaoImpl.viewMember(memberDto);
	}
	
	// 아이디 중복 체크
	@Override
	public int idCheck(MemberDto memberDto) {
		int result = memberDaoImpl.idCheck(memberDto);
		return result;
	}

	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
		// session.removeAttribute("Id");
		// 세션 정보를 초기화 시킴
		session.invalidate();
	}

	// 아이디 찾기
	@Override
	public String getId(HashMap<String, Object> paramMap) {
		return memberDaoImpl.getId(paramMap);
	}

	// 패스워드 찾기
	@Override
	public String getPassword(HashMap<String, Object> paramMap) {
		return memberDaoImpl.getPassword(paramMap);
	}
	
	// 회원정보 수정
	@Override
	public void memberUpdate(MemberDto memberDto, HttpSession session) {
		// 받은 memberDto를 DAO로 보내줍니다.
		int result = memberDaoImpl.memberUpdate(memberDto);
		System.out.println("result=["+result+"]");
		
		if(result !=0) // 업데이트 하면  session 값들도 변경
		{
			session.setAttribute("memberName", memberDto.getName());
			System.out.println("서비스"+memberDto.getName());
			session.setAttribute("memberEmail", memberDto.getEmail());
			System.out.println("서비스"+memberDto.getEmail());
		}	
	}
	
	// 회원 탈퇴
	public void memberDelete(MemberDto memberDto) {
		memberDaoImpl.memberDelete(memberDto);
	}
}
