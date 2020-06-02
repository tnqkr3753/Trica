package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.BoardVO;

public interface BoardDAO {
	public int insertBoard(BoardVO vo);
	public List<BoardVO> getBoardList(HashMap hash);
	public BoardVO getBoardOne(BoardVO vo);
	public int countBoard();
}
