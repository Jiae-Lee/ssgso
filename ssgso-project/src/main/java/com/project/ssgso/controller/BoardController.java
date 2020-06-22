package com.project.ssgso.controller;

import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.ssgso.dao.BoardFreeDao;
import com.project.ssgso.dto.BoardDto;
import com.project.ssgso.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardFreeDao boardfreeDao;
	

	// 메인화면
	@RequestMapping(value = "board/boardFree")
	public String BoardFree(Model model) {
		System.out.println("BoardFree::start");
		List<BoardDto> boardFreeList = boardfreeDao.BoardFree();
		model.addAttribute("list", boardFreeList);
		return "board/boardFree";
	}

	// 상세조회
	@RequestMapping(value = "board/selectBoardFree")
	public String selectBoardFree(@RequestParam("board_no") int board_no, Model model) {
		System.out.println("board_no[" + board_no + "]");
		BoardDto boardDto = boardfreeDao.selectBoardFree(board_no);
		model.addAttribute("BoardDto", boardDto);
		return "board/selectBoardFree";
	}

	// 작성화면
	@RequestMapping(value = "/board/boardFreeWrite")
	public String boardFreeWrite() {
		return "board/boardFreeWrite";
	}

	// 게시판입력
	@RequestMapping(value = "board/insertBoardFree")
	public String insertBoardFree(@RequestParam HashMap<String, String> parmMap) {
		System.out.println("insertBoardFree::START");
		int result = boardfreeDao.insertBoardFree(parmMap);
		System.out.println("result=["+result+"]");
		return "redirect:boardFree";

	}

	// 업데이트
	@RequestMapping(value = "board/updateBoardFree")
	public String updatecjsBoardFree(@RequestParam HashMap<String, String> paramMap,
			RedirectAttributes redirectAttributes) {
		System.out.println("parmMap=" + paramMap);
		redirectAttributes.addAttribute("board_no", paramMap.get("board_no"));
		return "redirect:/selectBaordFree";// 내부에서처리
	}

	// 삭제
	@RequestMapping(value = "board/deleteBoardFree")
	public String deleteBoardFree(@RequestParam("Board_no") int board_no) {
		System.out.println("board_no[" + board_no + "]");
		boardfreeDao.deleteBoardFree(board_no);
		return "board/boardFreeView";
	}

//조건조회
	@RequestMapping(value = "/board/boardFreeView")
	public String boardFreeView() {
		return "board/boardFreeView";
	}

	@RequestMapping(value = "/selectBoardFreeList")
	public String selectBoardFreeList(@RequestParam HashMap<String, String> parmMap, Model model) {
		System.out.println("parmMap=[" + parmMap + "]");
		List<BoardDto> boardfreeList = boardfreeDao.selectBoardFreeList(parmMap);
		model.addAttribute("list", boardfreeList);
		return "board/boardFreeView";
	}
	
	
	@RequestMapping(value = "/board/boardEvent")
	public String boardEvent() {
		return "board/boardEvent";
	}

	@RequestMapping(value = "/board/boardEventWrite")
	public String boardEventWrite() {
		return "board/boardEventWrite";
	}

	@RequestMapping(value = "/board/boardEventView")
	public String boardEventView() {
		return "board/boardEventView";
	}

}
