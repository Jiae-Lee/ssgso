package com.project.ssgso.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.project.ssgso.dto.HashtagDto;

public interface IHashtagDao {
		public List<HashtagDto> selectHashtagAllList();
		public void createHashtag(Map<String, Object> paramMap);
}
