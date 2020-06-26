package com.project.ssgso.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.service.SsgsoServiceImpl;

@Controller
public class IndexController {
	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
	@RequestMapping(value="/index2")
	public String index2() {
		return "index2";
	}
	
	@RequestMapping(value="/index")
	public String index(Model model) {
		
		List <CategoryDto> categoryDtoList = ssgsoServiceImpl.selectCategoryAllList();
	    
//		// !! 여기서부터는 임의의값
//		List <CategoryDto> categoryDtoList = new ArrayList<CategoryDto>();
//		CategoryDto dto1 = new CategoryDto();
//		dto1.setCat_no(1);
//		dto1.setCat_val("브라이덜샤워");
//		
//		CategoryDto dto2 = new CategoryDto();
//		dto2.setCat_no(2);
//		dto2.setCat_val("스터디룸");
//		
//		categoryDtoList.add(dto1);
//		categoryDtoList.add(dto2);
//		// !! 여기까지
		
		List <AccomodationDto> AccomodationDtoList =
				ssgsoServiceImpl.selectAccomodationAllList();
		
		model.addAttribute("list",AccomodationDtoList);
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
