package com.trica.service;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.BoardVO;

public interface BoardService {
	public int boardInsert(BoardVO vo) ;
	public BoardVO getBoardOne(BoardVO vo);
	public List<BoardVO> getBoardList(int pNum,String boardType);
	public HashMap countBoard(String bType);
}
