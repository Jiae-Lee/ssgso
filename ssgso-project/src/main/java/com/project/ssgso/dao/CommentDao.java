package com.project.ssgso.dao;

import java.util.HashMap;
import java.util.List;

import com.project.ssgso.dto.CommentDto;

public interface CommentDao {
	
	
	public List<CommentDto> readComment(int bno);
	
//등록
	public int insertComment(HashMap<String, String> paramMap);

}
