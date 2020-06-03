package com.trica.dao;

import java.util.HashMap;
import java.util.List;

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
		return sqlSession.insert("BoardDAO.insertBoard", vo);
	}
	@Override
	public List<BoardVO> getBoardList(HashMap hash) {
		System.out.println("------dao.getBoardList호출---------");
		return sqlSession.selectList("BoardDAO.selectBoardList", hash);
	}
	@Override
	public BoardVO getBoardOne(BoardVO vo) {
		System.out.println("------dao getBoardOne 호출------ : " + vo.getBoardNo());
		return sqlSession.selectOne("BoardDAO.selectBoard", vo);
	}
	@Override
	public HashMap countBoard(String bType) {
		return sqlSession.selectOne("BoardDAO.countBoard",bType);
	}
	@Override
	public int deleteBoard(BoardVO vo) {
		return sqlSession.delete("BoardDAO.deleteBoard", vo);
	}
	@Override
	public int modifyBoard(BoardVO vo) {
		return sqlSession.update("BoardDAO.modifyBoard",vo);
	}
	@Override
	public void increateCount(BoardVO vo) {
		sqlSession.update("BoardDAO.increaseCount", vo);
	}

}
