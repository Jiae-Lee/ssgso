package com.project.ssgso.dao;

import java.util.List;

import com.project.ssgso.dto.MemberDto;

public interface IMemberDao {
	public List <MemberDto> selectMemberList();
}
