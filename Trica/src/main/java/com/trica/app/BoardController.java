package com.trica.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {
	@RequestMapping("/{step}.trc")
	public ModelAndView getBoardList(@PathVariable String step) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("boardTable/"+step);
		return mv;
	}
}
