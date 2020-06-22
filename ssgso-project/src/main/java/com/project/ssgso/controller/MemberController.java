package com.project.ssgso.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.ssgso.dto.MemberDto;
import com.project.ssgso.service.MemberServiceImpl;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberServiceImpl memberServiceImpl;
	
	@RequestMapping(value="/member/list")
	public String selectMemberList(Model model) {
		List<MemberDto> memberList = memberServiceImpl.selectMemberList();
		
		System.out.println(memberList);
		
		model.addAttribute("list", memberList);
		
		
		return "member/list";
	}
	
}
