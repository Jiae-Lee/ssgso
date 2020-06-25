package com.project.ssgso.controller;

import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;



import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.ssgso.dao.BoardFreeDao;
import com.project.ssgso.dao.CommentDao;
import com.project.ssgso.dto.BoardDto;
import com.project.ssgso.dto.CommentDto;
import com.project.ssgso.dto.EventBoardDto;
import com.project.ssgso.service.BoardService;
import com.project.ssgso.service.BoardServiceImpl;
import com.project.ssgso.service.CommentService;

@Controller
public class BoardController {

	@Autowired
	private BoardFreeDao boardfreeDao;

	@Autowired
	private CommentDao CommentDao;
	

	
	

	// 메인화면
	@RequestMapping(value = "board/boardFree")
	public String BoardFree(Model model) {
		System.out.println("BoardFree::start");
		List<BoardDto> boardFreeList = boardfreeDao.BoardFree();
		model.addAttribute("list", boardFreeList);
		return "/board/boardFree";
	}

	// 상세조회
	@RequestMapping(value = "board/selectBoardFree")
	public String selectBoardFree(@RequestParam("board_no") int board_no, Model model) {
		System.out.println("board_no[" + board_no + "]");
		BoardDto boardDto = boardfreeDao.selectBoardFree(board_no);
		model.addAttribute("BoardDto", boardDto);
		
		List<CommentDto> commentList = CommentDao.readComment(board_no);
		model.addAttribute("board_no",board_no);
		
		if(commentList != null && commentList.size() !=0) {
			model.addAttribute("list", commentList);
		}
		return "/board/selectBoardFree";
	}

	// 작성화면
	@RequestMapping(value = "/board/boardFreeWrite")
	public String boardFreeWrite() {
		return "/board/boardFreeWrite";
	}

	// 게시판입력
	@RequestMapping(value = "board/insertBoardFree")
	public String insertBoardFree(@RequestParam HashMap<String, String> parmMap) {
		System.out.println("insertBoardFree::START");
		int result = boardfreeDao.insertBoardFree(parmMap);
		System.out.println("result=[" + result + "]");
		return "redirect:boardFree";

	}

	// 업데이트
	@RequestMapping(value = "/updateBoardFree")
	public String updateBoardFree(@RequestParam HashMap<String, String> paramMap,
			RedirectAttributes redirectAttributes) {
		System.out.println("parmMap=" + paramMap);

		if (paramMap.get("flag").equals("u")) {
			boardfreeDao.updateBoardFree(paramMap);
		} else {
			boardfreeDao.deleteBoardFree(Integer.parseInt(paramMap.get("BOARD_NO")));
		}

		redirectAttributes.addAttribute("board_no", paramMap.get("BOARD_NO"));

		return "redirect:board/boardFree";// 내부에서처리
		// 내부에서 처리함
	}

	// 삭제
	@RequestMapping(value = "/deleteBoardFree")
	public String deleteBoardFree(@RequestParam("board_no") int BOARD_NO) {
		System.out.println("controller::::::board_no[" + BOARD_NO + "]");
		boardfreeDao.deleteBoardFree(BOARD_NO);
		return "redirect:board/boardFree";
	}

//조건조회
	@RequestMapping(value = "/board/boardFreeView")
	public String boardFreeView() {
		return "/board/boardFreeView";
	}

	@RequestMapping(value = "/selectBoardFreeList")
	public String selectBoardFreeList(@RequestParam HashMap<String, String> parmMap, Model model) {
		System.out.println("parmMap=[" + parmMap + "]");
		List<BoardDto> boardfreeList = boardfreeDao.selectBoardFreeList(parmMap);
		model.addAttribute("list", boardfreeList);
		return "/board/boardFreeView";
	}

	
	
	
	
	//////////////////////////////////////////이벤트메인화면//////////////////////////////////////////// 
	@RequestMapping(value = "board/boardEvent")
	public String BoardEvent(Model model) {
		System.out.println("boardEvent11111::start");
		List<EventBoardDto> boardEventList = boardfreeDao.BoardEvent();
		for(int i=0; i<boardEventList.size(); i++) {
			System.out.println("date=["+boardEventList.get(i).getEcreate_date()+"]");
		}
		model.addAttribute("list", boardEventList);
		return "/board/boardEvent";
	}

	// 이벤트상세조회
	@RequestMapping(value = "board/selectBoardEvent")
	public String selectBoardEvent(@RequestParam("eboard_no") int eboard_no, Model model) {
		System.out.println("selectBoardEventboard_no[" + eboard_no + "]");
		EventBoardDto eventBoardDto = boardfreeDao.selectBoardEvent(eboard_no);
		model.addAttribute("EventBoardDto", eventBoardDto);
		return "/board/selectBoardEvent";
	}

	// 이벤트작성화면
	@RequestMapping(value = "/board/boardEventWrite")
	public String boardEventWrite() {
		return "/board/boardEventWrite";
	}

	// 이벤트게시판입력
	@RequestMapping(value = "board/insertBoardEvent")
	public String insertBoardEvent(@RequestParam HashMap<String, String> parmMap) {
		System.out.println("insertBoardEvent1111::START");
		System.out.println("insertboard param :"+parmMap);
		int result = boardfreeDao.insertBoardEvent(parmMap);
		System.out.println("result=[" + result + "]");
		return "redirect:boardEvent";

	}

	// 이벤트업데이트
	@RequestMapping(value = "/updateBoardEvent")
	public String updateBoardEvent(@RequestParam HashMap<String, String> paramMap,
			RedirectAttributes redirectAttributes) {
		System.out.println("updateBoardEventparmMap=" + paramMap);

		if (paramMap.get("flag").equals("u")) {
			boardfreeDao.updateBoardEvent(paramMap);
		} else {
			boardfreeDao.deleteBoardEvent(Integer.parseInt(paramMap.get("EBOARD_NO")));
		}

		redirectAttributes.addAttribute("eboard_no", paramMap.get("EBOARD_NO"));

		return "redirect:board/boardEvent";// 내부에서처리
		// 내부에서 처리함
	}

	// 이벤트삭제
	@RequestMapping(value = "/deleteBoardEvent")
	public String deleteBoardEvent(@RequestParam("board_no") int EBOARD_NO) {
		System.out.println("controllerdeleteBoardEvent::::::board_no[" + EBOARD_NO + "]");
		boardfreeDao.deleteBoardEvent(EBOARD_NO);
		return "redirect:board/boardEvent";
	}

//이벤트조건조회
	@RequestMapping(value = "/board/boardEventView")
	public String boardEventView() {
		return "/board/boardEventView";
	}

	@RequestMapping(value = "/selectBoardEventList")
	public String selectBoardEventList(@RequestParam HashMap<String, String> parmMap, Model model) {
		System.out.println("parmMap selectBoardEventList=[" + parmMap + "]");
		List<EventBoardDto> boardeventList = boardfreeDao.selectBoardEventList(parmMap);
		model.addAttribute("list", boardeventList);
		return "/board/boardFreeView";
	}

	
	
	////////////////////////////////////////[ 댓글 ]///////////////////////////////////////////////////////
	

	@RequestMapping(value="board/commentWrite")
	public String commentWrite() {
	return "/board/commesntWrite";
	
}
	//댓글입력
	@RequestMapping(value = "board/insertComment")
	public String insertComment(@RequestParam HashMap<String, String> parmMap,Model model) {
		System.out.println("insertComment::START");
		System.out.println("boaarno="+parmMap);
		int result = CommentDao.insertComment(parmMap);
		System.out.println("result=[" + result + "]");
		model.addAttribute("board_no", Integer.parseInt(parmMap.get("board_no")));
		return "redirect:selectBoardFree";
	}
	
	
}