package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;

import com.project.ssgso.dto.CommentDto;

public interface CommentService {
	
	
	
	public List<CommentDto> readComment(int bno);

	public void insertComment(HashMap<String, String> paramMap);
}


