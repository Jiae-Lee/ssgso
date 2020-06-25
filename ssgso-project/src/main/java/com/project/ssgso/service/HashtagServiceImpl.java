package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ssgso.dao.HashtagDaoImpl;
import com.project.ssgso.dto.HashtagDto;

@Service
public class HashtagServiceImpl implements IHashtagService{
	@Autowired
	public HashtagDaoImpl hashtagDaoImpl;
	
	@Override
	public List<HashtagDto> selectHashtagAllList() {
		return hashtagDaoImpl.selectHashtagAllList();
	}

	@Override
	public void createHashtag(Map<String, Object> paramMap) {
		
		hashtagDaoImpl.createHashtag(paramMap);
	}

}
