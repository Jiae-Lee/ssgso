package com.project.ssgso.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.dto.HashtagDto;
import com.project.ssgso.dto.RoomDto;

@Repository
public class SsgsoDaoImpl implements ISsgsoDao{
	
	@Autowired
	public SqlSessionTemplate sqlSession;

	@Override
	public List<AccomodationDto> selectAccomodationAllList() {
		List<AccomodationDto> AccomodationDtoList = 
				new ArrayList <AccomodationDto>();
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
		System.out.println("createAccomodationDaoImpl::" + paramMap);
		sqlSession.insert("ssgsoMapper.createAccomodation", paramMap);		
	}

	@Override
	public List<CategoryDto> selectCategoryAllList() {
		List<CategoryDto> categoryDtoList = new ArrayList<CategoryDto>();
		categoryDtoList = sqlSession.selectList("ssgsoMapper.selectCategoryAllList");
		
		return categoryDtoList;
	}

	@Override
	public int getAcnoUsingName(String name) {
		int ac_no = sqlSession.selectOne("ssgsoMapper.getAcnoUsingName", name);
		return ac_no;
	}
  
	///////// 예약 등록 추가 //////////
	@Override
	public void insertBooking(HashMap<String, String> paramMap) {
		sqlSession.insert("ssgsoMapper.insertBooking", paramMap);	
  }
  
	@Override
	public List<AccomodationDto> selectAccListUsingCategory(String category) {
		List<AccomodationDto> AccomodationDtoList = 
				new ArrayList <AccomodationDto>();
		AccomodationDtoList = sqlSession.selectList("ssgsoMapper.selectAccListUsingCategory", category);
		return AccomodationDtoList;
	}

	@Override
	public List<HashtagDto> selectHashListUsingAcno(int ac_no) {
		List<HashtagDto> HashtagDtoList = new ArrayList<HashtagDto>();
		HashtagDtoList = sqlSession.selectList("ssgsoMapper.selectHashListUsingAcno", ac_no);
		
		return HashtagDtoList;
	}
}
