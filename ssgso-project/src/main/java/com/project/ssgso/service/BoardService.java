
package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.ssgso.dto.BoardDto;
import com.project.ssgso.dto.EventBoardDto;

public interface BoardService {

	// 전체목록조회
	public List<BoardDto> BoardFree();

	// 등록
	public void insertBoardFree(HashMap<String, String> paramMap);

	public BoardDto selectBoardFree(int board_no);

	// 수정
	public void updateBoardFree(HashMap<String, String> paramMap);

	// 삭제
	public void deleteBoardFree(int board_no);

	// 목록조회
	public List<BoardDto> selectBoardFreeList(HashMap<String, String> parmMap);
	
	
	
	
	
	
	
	public List<EventBoardDto> BoardEvent();

	//등록
		public int insertBoardEvent(HashMap<String, String> paramMap);

		public EventBoardDto selectBoardEvent(int board_no);

	//수정
		public void updateBoardEvent(HashMap<String, String> paramMap);

	//삭제
		public void deleteBoardEvent(int board_no);

	//목록조회
		public List<EventBoardDto> selectBoardEventList(HashMap<String, String> parmMap);



}