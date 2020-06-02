package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.BoardVO;

public interface BoardDAO {
	public int insertBoard(BoardVO vo);
	public List<BoardVO> getBoardList(HashMap hash);
	public BoardVO getBoardOne(BoardVO vo);
	public HashMap countBoard(String bType);
	public int deleteBoard(BoardVO vo);
	public int modifyBoard(BoardVO vo);
	public void increateCount(BoardVO vo);
}
