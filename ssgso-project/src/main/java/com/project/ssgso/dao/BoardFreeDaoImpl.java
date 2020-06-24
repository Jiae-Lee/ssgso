package com.project.ssgso.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.binding.MapperMethod.ParamMap;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.ssgso.dto.BoardDto;

@Repository
public class BoardFreeDaoImpl implements BoardFreeDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardDto> BoardFree() {
		// TODO Auto-generated method stub
		List<BoardDto> BaordDtoList = new ArrayList<BoardDto>();
		BaordDtoList = sqlSession.selectList("BoardFreeMapper.boardFree");
		return BaordDtoList ;
	}

	@Override
	public int insertBoardFree(HashMap<String, String> paramMap) {
	return sqlSession.insert("BoardFreeMapper.insertBoardFree", paramMap);
		
	}

	@Override
	public BoardDto selectBoardFree(int board_no) {
	BoardDto BoardDto= sqlSession.selectOne("BoardFreeMapper.selectBoardFree",board_no);
		return BoardDto;
	}

	@Override
	public void updateBoardFree(HashMap<String, String> paramMap) {
sqlSession. update("BoardFreeMapper.updateBoardFree",paramMap );

		
	}

	@Override
	public void deleteBoardFree(int board_no) {
		// TODO Auto-generated method stub
		System.out.println("dao::boardno="+board_no);
		sqlSession. delete("BoardFreeMapper.deleteBoardFree",board_no );
	}

	@Override
	public List<BoardDto> selectBoardFreeList(HashMap<String, String> parmMap) {
	List<BoardDto> BaordDtoList =new ArrayList<BoardDto>();
	BaordDtoList = sqlSession.selectList("BoardFreeMapper.selectBoardFreeList",parmMap);
		return BaordDtoList;
	}

	@Override
	public void updateViewcnt(int board_no) {
		sqlSession.update("BoardFreeMapper.updateViewcnt",board_no);
		
	}


	


}