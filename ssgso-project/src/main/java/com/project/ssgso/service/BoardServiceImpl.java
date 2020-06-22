package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ssgso.dao.BoardFreeDaoImpl;
import com.project.ssgso.dto.BoardDto;

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
	

}