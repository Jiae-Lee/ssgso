package com.project.ssgso.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.ssgso.dao.CommentDaoImpl;
import com.project.ssgso.dto.CommentDto;

public class CommentServiceImpl implements CommentService {

	
	@Autowired
	private CommentDaoImpl commentDaoImpl;
	
	@Override
	public List<CommentDto> readComment(int bno) {
		return commentDaoImpl.readComment(bno);
	}

	@Override
	public void insertComment(HashMap<String, String> paramMap) {
		commentDaoImpl.insertComment(paramMap);
	}

}
