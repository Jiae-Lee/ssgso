package com.project.ssgso.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.RoomDto;

@Repository
public class SsgsoDaoImpl implements ISsgsoDao{
	
	@Autowired
	public SqlSessionTemplate sqlSession;

	@Override
	public List<AccomodationDto> selectAccomodationAllList() {
		List<AccomodationDto> AccomodationDtoList = 
				new ArrayList <AccomodationDto>();
		
		System.out.println("-===== " + sqlSession.selectList("ssgsoMapper.selectAccomodationAllList"));
		
		AccomodationDtoList = sqlSession.selectList("ssgsoMapper.selectAccomodationAllList");
		
		return AccomodationDtoList;
	}

	@Override
	public AccomodationDto selectAccomodation(int ac_no) {
		AccomodationDto AccomodationDto=
		sqlSession.selectOne("ssgsoMapper.selectAccomodation", ac_no);
		return AccomodationDto;
	}

	@Override
	public List<RoomDto> selectRoomAllList() {
		List<RoomDto> RoomDtoList =
				new ArrayList <RoomDto>();
		
		RoomDtoList = sqlSession.selectList("ssgsoMapper.selectRoomAllList");
		
		return RoomDtoList;
	}

	@Override
	public void createAccomodation(HashMap<String, String> paramMap) {
		System.out.println("DaoImpl::" + paramMap);
		sqlSession.insert("ssgsoMapper.createAccomodation", paramMap);
		
	}
}
