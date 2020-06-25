package com.project.ssgso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.service.SsgsoServiceImpl;

@Controller
public class IndexController {

	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
	@RequestMapping(value="/index")
	public String index(Model model) {
		
		List <CategoryDto> categoryDtoList = ssgsoServiceImpl.selectCategoryAllList();
		model.addAttribute("list", categoryDtoList);
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
