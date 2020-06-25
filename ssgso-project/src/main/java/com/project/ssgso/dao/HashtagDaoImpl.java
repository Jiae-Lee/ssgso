package com.project.ssgso.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.HashtagDto;

@Repository
public class HashtagDaoImpl implements IHashtagDao{
	@Autowired
	public SqlSessionTemplate sqlSession;
	
	@Override
	public List<HashtagDto> selectHashtagAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createHashtag(Map<String, Object> paramMap) {
		System.out.println("-------HashtagDaoImpl-------");
		System.out.println(paramMap);
		
		for(String key : paramMap.keySet()) {
		    ArrayList<HashtagDto> value = (ArrayList<HashtagDto>) paramMap.get(key);
		    for(HashtagDto val : value) {
		    	System.out.println(val.getAc_no());
		        System.out.println(val.getHash_val());
		        System.out.println(val.getAc_no());
		    }
		}
		
		sqlSession.insert("hashtagMapper.insertHashtag", paramMap);	
	}

}
