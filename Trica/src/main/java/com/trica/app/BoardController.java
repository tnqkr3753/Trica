package com.trica.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.BoardService;
import com.trica.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardService boardService ;
	@RequestMapping("/{step}.trc")
	public ModelAndView getBoardList(@PathVariable String step) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("boardTable/"+step);
		return mv;
	}
	@RequestMapping("/registBoard.trc")
	public ModelAndView registBoard(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getBoardContent());
		System.out.println(vo.getBoardTitle());
		mv.setViewName("boardList");
		int result = boardService.boardInsert(vo);
		mv.addObject("result",result);
		return mv;
	}
}
