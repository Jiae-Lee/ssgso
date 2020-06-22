package com.project.ssgso.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@RequestMapping(value = "/service/serviceNotice")
	public String serviceNotice() {
		return"service/serviceNotice";
	}
	
	
	@RequestMapping(value = "/service/serviceNoticeWrite")
	public String serviceNoticeWrite() {
		return"service/serviceNoticeWrite";
	}
	
	@RequestMapping(value = "/service/serviceQuestion")
	public String serviceQuestion() {
		return"service/serviceQuestion";
	}
	
	@RequestMapping(value = "/service/serviceOnetooneView")
	public String serviceOnetooneView() {
			return"service/serviceOnetooneView";
	}

}