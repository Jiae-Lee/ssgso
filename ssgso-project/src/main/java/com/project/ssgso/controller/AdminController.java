package com.project.ssgso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value="/admin/adminUsermanage")
	public String adminUsermanage() {
		return "admin/adminUsermanage";
	}
	
	@RequestMapping(value="/admin/adminBoardmanage")
	public String adminBoardmanage() {
		return "admin/adminBoardmanage";
	}
}
