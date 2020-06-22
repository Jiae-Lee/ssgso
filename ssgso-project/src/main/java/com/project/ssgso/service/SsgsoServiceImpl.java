package com.project.ssgso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ssgso.dao.SsgsoDaoImpl;
import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.RoomDto;

@Service
public class SsgsoServiceImpl implements ISsgsoService{
	
	@Autowired
	public SsgsoDaoImpl ssgsoDaoImpl;

	@Override
	public List<AccomodationDto> selectAccomodationAllList() {
		return ssgsoDaoImpl.selectAccomodationAllList();
	}

	@Override
	public AccomodationDto selectAccomodation(int ac_no) {
		return ssgsoDaoImpl.selectAccomodation(ac_no);
	}

	@Override
	public List<RoomDto> selectRoomAllList() {
		return ssgsoDaoImpl.selectRoomAllList();
	}
}
