package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.BookingDto;
import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.dto.HashtagDto;
import com.project.ssgso.dto.RoomDto;

public interface ISsgsoService {
	
	//숙소 전체 조회
	public List<AccomodationDto> selectAccomodationAllList();
	
	public List<AccomodationDto> selectAccListUsingCategory(String category);
	
	public List<HashtagDto> selectHashListUsingAcno(int ac_no);
	
	//숙소 상세 조회
	public AccomodationDto selectAccomodation(int ac_no);
	
	//숙소 디테일(룸) 전체 조회
	public List<RoomDto> selectRoomAllList(); 
	
	public void createAccomodation(HashMap<String, String> paramMap);
	
	public String getKakaoApiFromAddress(String roadFullAddr);
	public HashMap<String, String> getXYMapfromJson(String jsonString);
	
	public List<CategoryDto> selectCategoryAllList();
	
	public int getAcnoUsingName(String name);
	
	
	
	// 예약 추가
	public void insertBooking(HashMap<String, String> paramMap);
}
