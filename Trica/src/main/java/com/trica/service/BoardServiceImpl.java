package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.BoardDAO;
import com.trica.vo.BoardVO;
@Service("boardService")
public class BoardServiceImpl implements BoardService {
	int pagePerBoard=10;
	@Autowired
	BoardDAO boardDAO;
	@Override
	public int boardInsert(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
	@Override 
	public BoardVO getBoardOne(BoardVO vo) {
		return boardDAO.getBoardOne(vo);
	}
	@Override
	public List<BoardVO> getBoardList(int pNum,String boardType) {
		int startRow = (pNum-1)*pagePerBoard+1;
		int endRow = (pNum)*pagePerBoard;
		HashMap hash = new HashMap();
		hash.put("startRow", startRow);
		hash.put("endRow", endRow);
		hash.put("boardType",boardType);
		return boardDAO.getBoardList(hash);
	}
	@Override  
	public HashMap countBoard(String bType) {
		return boardDAO.countBoard(bType);
	}
	@Override
	public int deleteBoard(BoardVO vo) {
		return boardDAO.deleteBoard(vo);
	}
	@Override
	public int modifyBoard(BoardVO vo) {
		return boardDAO.modifyBoard(vo);
	}
	@Override
	public void increaseCount(BoardVO vo) {
		boardDAO.increateCount(vo);
	}
	

}
