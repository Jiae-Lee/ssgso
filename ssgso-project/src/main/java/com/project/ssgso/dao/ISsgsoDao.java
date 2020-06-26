package com.project.ssgso.dao;

import java.util.HashMap;
import java.util.List;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.dto.RoomDto;

public interface ISsgsoDao {
	
	//숙소 전체 조회
	public List<AccomodationDto> selectAccomodationAllList();
	
	//숙소 상세 조회
	public AccomodationDto selectAccomodation(int ac_no);
	
	//숙소 디테일(룸) 전체 조회
	public List<RoomDto> selectRoomAllList(); 
	
	public void createAccomodation(HashMap<String, String> paramMap);
	public List<CategoryDto> selectCategoryAllList();
	public int getAcnoUsingName(String name);
	
	
	//////////예약 등록 추가///////////
	public void insertBooking(HashMap<String, String> paramMap);
}
