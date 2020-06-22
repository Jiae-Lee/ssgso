package com.project.ssgso.service;

import java.util.List;

import com.project.ssgso.dto.MemberDto;

public interface IMemberService {
	public List<MemberDto> selectMemberList();
	public MemberDto selectMember(int mem_no);
}
