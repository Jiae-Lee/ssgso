package com.project.ssgso.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.CommentDto;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<CommentDto> readComment(int bno) {
		System.out.println("bno=["+bno+"]");
		return sqlSession.selectList("commentMapper.readComment",bno);
	}

	@Override
	public int insertComment(HashMap<String, String> paramMap) {
		return sqlSession.insert("commentMapper.insertComment", paramMap);
	}

}
