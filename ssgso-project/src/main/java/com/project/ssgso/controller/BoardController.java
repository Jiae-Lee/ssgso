package com.project.ssgso.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping(value="/board/boardFree")
	public String boardFree() {
		return"board/boardFree";
	}
	
	
	@RequestMapping(value = "/board/boardFreeWrite")
	public String boardFreeWrite() {
		return"board/boardFreeWrite";
	}
	
	@RequestMapping(value = "/board/boardFreeView")
	public String boardFreeView() {
			return"board/boardFreeView";
		}
	
	@RequestMapping(value = "/board/boardEvent")
	public String boardEvent() {
		return"board/boardEvent";
	}
	
	
	@RequestMapping(value = "/board/boardEventWrite")
	public String boardEventWrite() {
		return"board/boardEventWrite";
	}
	
	@RequestMapping(value = "/board/boardEventView")
	public String boardEventView() {
			return"board/boardEventView";
		}
	
}
