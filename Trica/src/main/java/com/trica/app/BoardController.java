package com.trica.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.BoardService;
import com.trica.vo.BoardVO;

@Controller
public class BoardController {
	int boardNoFormat = 6;
	@Autowired
	BoardService boardService ;
	@RequestMapping("/board/{step}.trc")
	public ModelAndView getBoardList(@PathVariable String step) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/"+step);
		return mv;
	}
	@RequestMapping("/registBoard.trc")
	public ModelAndView registBoard(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getBoardContent());
		System.out.println(vo.getBoardTitle());
		mv.setViewName("board/boardList");
		int result = boardService.boardInsert(vo);
		mv.addObject("result",result);
		return mv;
	}
	@RequestMapping("/getBoardList.trc")
	public ModelAndView getBoardList(String pageNum,String bType) {
		int pNum=1;
		String boardType = "Free";
		if(bType!=null) {
			boardType=bType;
		}
		if(pageNum != null) {
			pNum=Integer.parseInt(pageNum);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("bList", boardService.getBoardList(pNum,boardType));
		mv.setViewName("board/boardFree");
		return mv;
	}
	@RequestMapping("/boardList.trc")
	public ModelAndView getBoardPage() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardList");
		return mv;
	}
	@RequestMapping("/insertBoard.trc")
	public ModelAndView insertBoard(String boardType) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/insertBoard");
		mv.addObject("boardType", boardType);
		return mv;
	}
	@RequestMapping("/boardView.trc")
	public ModelAndView boardView(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardView");
		BoardVO rvo = boardService.getBoardOne(vo);
		mv.addObject("board", rvo);
		return mv;
	}
}
