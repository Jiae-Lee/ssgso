package com.project.ssgso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ssgso.dao.MemberDaoImpl;
import com.project.ssgso.dto.MemberDto;

@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired
	private MemberDaoImpl memberDaoImpl;
	
	@Override
	public List<MemberDto> selectMemberList() {
		return memberDaoImpl.selectMemberList();
	}

	@Override
	public MemberDto selectMember(int mem_no) {
		return memberDaoImpl.selectMember(mem_no);
	}

	

}
