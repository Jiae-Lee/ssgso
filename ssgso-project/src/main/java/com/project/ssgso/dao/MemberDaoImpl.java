package com.project.ssgso.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.MemberDto;

@Repository
public class MemberDaoImpl implements IMemberDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<MemberDto> selectMemberList() {
		System.out.println("====MEMBERDAOIMPL=====");
		
		List<MemberDto> memberDtoList = new ArrayList<MemberDto>();
		
		//Query 1. returnType return
		memberDtoList = sqlSession.selectList("memberMapper.selectMemberList");
		
		return memberDtoList;
	}
}
