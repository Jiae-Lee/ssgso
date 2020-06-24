
package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.ssgso.dto.BoardDto;

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
	


}