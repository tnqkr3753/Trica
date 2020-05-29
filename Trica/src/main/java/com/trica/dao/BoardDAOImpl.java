package com.trica.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.BoardVO;
@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("BoardDAO.insertBoard", vo);
	}

}
