package com.project.ssgso.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.service.SsgsoServiceImpl;

import net.sf.json.JSONArray;

@Controller
public class SearchController {
	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
	@RequestMapping(value="/search")
	public String searchSsgso(@RequestParam HashMap<String, String> paramMap, Model model) {
		System.out.println("====searchSsgso====");
		System.out.println(paramMap);
		String category = paramMap.get("category");
		List <AccomodationDto> AccomodationDtoList = new ArrayList<AccomodationDto>();

		if (!category.equals("")) {
			System.out.println("값이잇따!!");
			AccomodationDtoList = ssgsoServiceImpl.selectAccListUsingCategory(category);
			
			
		} else {
			System.out.println("값이없다!!!");
			AccomodationDtoList = ssgsoServiceImpl.selectAccListUsingCategory(category);
			model.addAttribute("list", AccomodationDtoList);
		}
		
		System.out.println(AccomodationDtoList);
		model.addAttribute("list", AccomodationDtoList);
		model.addAttribute("searchMap", paramMap);
		
		return "search/result";
	}
	
	@RequestMapping(value="/search/map")
	public String showMap(@RequestParam("location") String location, Model model) throws JsonProcessingException {
		System.out.println("location = " + location);
		
		// 전체 숙소 리스트 가져와서 model에 넣기
		List <AccomodationDto> AccomodationDtoList = ssgsoServiceImpl.selectAccomodationAllList();
		
		
//		//!!!
//				List <AccomodationDto> AccomodationDtoList = new ArrayList<AccomodationDto>();
//				AccomodationDto dto1 = new AccomodationDto();
//				dto1.setAddress("서울특별시 영등포구 당산동6가 당산로 241 유니언타운 1층");
//				dto1.setName("카페설리번 당산점");
//				dto1.setLatitude(37.557157);
//				dto1.setLongitude(126.935120);
//				
//				AccomodationDto dto2 = new AccomodationDto();
//				dto2.setAddress("서울특별시 영등포구 당산2동 당산로 172");
//				dto2.setName("세인트릴리안");
//				dto2.setLatitude(37.557863);
//				dto2.setLongitude(126.938768);
//				
//				AccomodationDtoList.add(dto1);
//				AccomodationDtoList.add(dto2);
//		//!!!
				
		JSONArray jsonArray = new JSONArray();
		
		model.addAttribute("list", jsonArray.fromObject(AccomodationDtoList));
		model.addAttribute("location", location);
		
		
		if (location.equals("")) {
			return "search/geoMap";
		} 
		return "search/map";
	}

}
