package com.project.ssgso.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.ssgso.dto.MemberDto;
import com.project.ssgso.service.MemberServiceImpl;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
public class MemberController {

	@Autowired
	private MemberServiceImpl memberServiceImpl; // 주입. 멤버서비스 객체

	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// 회원가입 구분
	@RequestMapping(value = "/join/joinHome")
	public String joinHome() 
	{
		System.out.println("joinHome::Start");
		return "join/joinHome";
	}

	// 일반 회원가입
	@RequestMapping(value = "/join/joinCustomer")
	public String joinCustomer() {
		return "join/joinCustomer";
	}

	// 파트너 회원가입
	@RequestMapping(value = "/join/joinPartner")
	public String joinPartner() {
		return "join/joinPartner";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/join/idCheck", method = RequestMethod.POST)
	public String idCheck(MemberDto memberDto) {
		System.out.println("idCheck");
		String result = memberServiceImpl.idCheck(memberDto)+"";
		System.out.println(result);
		return result;
	}	
		
	// 패스워드 확인
		
		
	// 회원가입정보를 다 입력하고 회원가입 버튼을 누른다. -> 요청 파라미터 처리 방식
	@RequestMapping(value = "/join/joinSuccess", method = RequestMethod.GET)
	public String memberJoin(@RequestParam HashMap<String, String> paramMap, MemberDto memberDto) {

		System.out.println("V::paramMap=" + paramMap);
		// 아이디 중복체크
//		int result = memberServiceImpl.idCheck(memberDto);
//		if(result == 0) {
//			System.out.println("paramMap=" + paramMap);
//			memberServiceImpl.memberJoin(paramMap); // 컨트롤러에서 서비스 호출
//			System.out.println("memberJoin::success");
//		}
		
		memberServiceImpl.memberJoin(paramMap); // 컨트롤러에서 서비스 호출
		
		//System.out.println("paramMap=" + paramMap);
		//memberServiceImpl.memberJoin(paramMap); // 컨트롤러에서 서비스 호출
		//System.out.println("memberJoin::success");
		
		return "join/joinSuccess"; // 실행이 완료 되었다면 joinSuccess로 이동
	}

}
