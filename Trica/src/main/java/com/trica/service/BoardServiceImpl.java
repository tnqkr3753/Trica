package com.trica.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.BoardDAO;
import com.trica.vo.BoardVO;
@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;
	@Override
	public int boardInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return boardDAO.insertBoard(vo);
	}

}
