package com.project.ssgso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}

	@RequestMapping(value="/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/sitemap")
	public String sitemap() {
		return "sitemap";
	}

	@RequestMapping(value="/subindex")
	public String subindex() {
		return "subindex";
	}

}
