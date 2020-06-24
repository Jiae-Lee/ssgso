package com.project.ssgso.dao;

import java.util.HashMap;
import java.util.List;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.RoomDto;

public interface ISsgsoDao {
	
	//숙소 전체 조회
	public List<AccomodationDto> selectAccomodationAllList();
	
	//숙소 상세 조회
	public AccomodationDto selectAccomodation(int ac_no);
	
	//숙소 디테일(룸) 전체 조회
	public List<RoomDto> selectRoomAllList(); 
	
	public void createAccomodation(HashMap<String, String> paramMap);

}
