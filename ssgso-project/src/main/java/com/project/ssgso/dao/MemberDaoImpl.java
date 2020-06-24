package com.project.ssgso.dao;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.MemberDto;

@Repository // 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class MemberDaoImpl implements IMemberDao {

	@Autowired // 주입. SqlSessionTemplate객체 - 정해진 sql문을 가져와서 실행하는 역할
	private SqlSessionTemplate sqlSession;

	// 회원가입 메소드 구현
	@Override
	public void memberJoin(HashMap<String, String> paramMap) {
		System.out.println("MemberDaoImpl::memberJoin()::start");
		sqlSession.insert("memberMapper.memberJoin", paramMap); // 입력값을 해시맵 형태로 넣어준다.
	}

	// 회원 로그인 체크
	@Override
	public boolean loginCheck(MemberDto memberDto) {

		System.out.println("loginCheck::memberDto=[" + memberDto + "]");
		String name = sqlSession.selectOne("loginMapper.loginCheck", memberDto);
		System.out.println(name);
		return (name == null) ? false : true;
	}

	// 회원 로그인 정보
	@Override
	public MemberDto viewMember(MemberDto memberDto) {
		return sqlSession.selectOne("loginMapper.viewMember", memberDto);
	}
	
	// 아이디 중복 체크
	@Override
	public int idCheck(MemberDto memberDto) {
		System.out.println("memberDto=["+memberDto+"]");
		int result = sqlSession.selectOne("memberMapper.idCheck", memberDto);
		return result;
	}
	
	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// 서비스단에서 세션 초기화만 하면 되기 때문에 따로 쿼리 필요없음.
	}

	// 아이디 찾기
	@Override
	public String getId(HashMap<String, Object> paramMap) {
		return sqlSession.selectOne("loginMapper.getId", paramMap);
	}

	// 패스워드 찾기
	@Override
	public String getPassword(HashMap<String, Object> paramMap) {
		return sqlSession.selectOne("loginMapper.getPassword", paramMap);
	}
	
	// 회원정보 수정
	@Override
	public int memberUpdate(MemberDto memberDto) {
		return sqlSession.update("memberMapper.memberUpdate", memberDto);
	}
	
	// 회원 탈퇴
	public void memberDelete(MemberDto memberDto) {
		sqlSession.delete("memberMapper.memberDelete", memberDto);
	}
}
