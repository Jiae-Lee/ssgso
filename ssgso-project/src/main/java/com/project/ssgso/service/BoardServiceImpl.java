package com.project.ssgso.service;

import java.nio.channels.SeekableByteChannel;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.project.ssgso.dao.BoardFreeDao;
import com.project.ssgso.dao.BoardFreeDaoImpl;
import com.project.ssgso.dto.BoardDto;
import com.project.ssgso.dto.EventBoardDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardFreeDaoImpl boardfreeDaoImpl;

	@Override
	public List<BoardDto> BoardFree() {
		// TODO Auto-generated method stub
		return boardfreeDaoImpl.BoardFree();
	}

	@Override
	public void insertBoardFree(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		boardfreeDaoImpl.insertBoardFree(paramMap);
		
	}

	@Override
	public BoardDto selectBoardFree(int board_no) {
		// TODO Auto-generated method stub
		return boardfreeDaoImpl.selectBoardFree(board_no);
	}

	@Override
	public void updateBoardFree(HashMap<String, String> paramMap) {
		// TODO Auto-generated method stub
		boardfreeDaoImpl.updateBoardFree(paramMap);
		
	}

	@Override
	public void deleteBoardFree(int board_no) {
		// TODO Auto-generated method stub
		boardfreeDaoImpl.deleteBoardFree(board_no);
		
	}

	@Override
	public List<BoardDto> selectBoardFreeList(HashMap<String, String> parmMap) {
		// TODO Auto-generated method stub
		return boardfreeDaoImpl.selectBoardFreeList(parmMap);
	}

	
	
	
	
	//////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
	@Override
	public List<EventBoardDto> BoardEvent() {
		return boardfreeDaoImpl.BoardEvent();
	}

	@Override
	public int insertBoardEvent(HashMap<String, String> paramMap) {
		return boardfreeDaoImpl.insertBoardEvent(paramMap);
	}

	@Override
	public EventBoardDto selectBoardEvent(int eboard_no) {
		return boardfreeDaoImpl.selectBoardEvent(eboard_no);
	}

	@Override
	public void updateBoardEvent(HashMap<String, String> paramMap) {
		boardfreeDaoImpl.updateBoardEvent(paramMap);
		
	}

	@Override
	public void deleteBoardEvent(int eboard_no) {
		boardfreeDaoImpl.deleteBoardEvent(eboard_no);
	}

	@Override
	public List<EventBoardDto> selectBoardEventList(HashMap<String, String> parmMap) {
		// TODO Auto-generated method stub
		return boardfreeDaoImpl.selectBoardEventList(parmMap);
	}



	

}