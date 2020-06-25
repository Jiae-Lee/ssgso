package com.project.ssgso.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.ssgso.dto.HashtagDto;
import com.project.ssgso.service.HashtagServiceImpl;
import com.project.ssgso.service.SsgsoServiceImpl;

@Controller
public class HashtagController {
	@Autowired
	private HashtagServiceImpl hashtagServiceImpl;
	@Autowired
	private SsgsoServiceImpl ssgsoServiceImpl; 
	
	@RequestMapping(value="/hashtag/create")
	public String hashtagCreate(@RequestParam MultiValueMap<String, String> paramMap,Model model) {
		System.out.println("hashtagCreate::::");
		final Iterator<Entry<String, List<String>>> it = paramMap.entrySet().iterator();

		// paramMap 값들 확인하기
	    while(it.hasNext()) {
	        final String k = it.next().getKey();
	        final List<String> values = it.next().getValue();
	        
	        System.out.println("key = " + k);
	        System.out.println("values = " + values);
	    }
	    
		System.out.println("hashtagCreate::: " + paramMap);
		System.out.println(paramMap.get("name").get(0));
		
		int ac_no = ssgsoServiceImpl.getAcnoUsingName(paramMap.get("name").get(0));
		System.out.println("ac_no = " + ac_no);
		
		List<HashtagDto> dtoList = new ArrayList<HashtagDto>();
		
		for (int i = 0; i < paramMap.get("hashtag").size(); i++) {
			HashtagDto dto = new HashtagDto();
			String hashtag = paramMap.get("hashtag").get(i);
			System.out.println("hashstag in dtoList = " + hashtag);
			dto.setHash_no(i+1);
			dto.setAc_no(ac_no);
			dto.setHash_val(hashtag);
			
			dtoList.add(dto);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", dtoList);
		
		System.out.println("hashMap :: + " + map);
		hashtagServiceImpl.createHashtag(map);
		
		return "redirect:/ssgso/ssgsoThemeRecommend";
	}
}
