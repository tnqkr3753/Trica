package com.trica.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.BoardService;
import com.trica.vo.BoardVO;

@Controller
public class BoardController {
	int boardPerPage = 10;
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
		String boardType = "";
		//파라미터에 타입이 없다면
		if(bType==null||bType.equals("")) {
			boardType="Free";
		}
		else {
			boardType=bType;
		}
		//파라미터에 페이지넘버가 없다면
		System.out.println(pageNum);
		if(pageNum != null) {
			if(pageNum.contains("plus")) { // + 가 있을 때 (Next를 눌렀을 때)
				pageNum=pageNum.replace("plus", "");
				pNum = Integer.parseInt(pageNum.substring(0, 1)) + Integer.parseInt(pageNum.substring(1, 2));
			}else if(pageNum.contains("minus")){ // - 가 있을 때 (Previous를 눌렀을 때)
				pageNum=pageNum.replace("minus", "");
				pNum = Integer.parseInt(pageNum.substring(0, 1)) - Integer.parseInt(pageNum.substring(1, 2));
			}else {
				pNum=Integer.parseInt(pageNum);
			}
		}
		HashMap hash = boardService.countBoard(boardType);
		int totalBoardNum = ((BigDecimal) hash.get("COUNTBOARD")).intValue(); //게시글의 총 개수
		System.out.println(hash);
		int totalPageNum =totalBoardNum/boardPerPage;
		if(totalBoardNum%boardPerPage!=0)  { //총 페이지 수 구하기
			totalPageNum+=1; 
		}
		List<Integer> pageList = new ArrayList<Integer>(); //있어야하는 페이지들 리스트
		for (int i = ((pNum/5)*5)+1 ; i <= ((pNum/5)*5)+5 && i<=totalPageNum ; i++) {
			pageList.add(i);
		}
		if(pNum<=0||pNum>totalPageNum) {
			pNum=1;
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("bList", boardService.getBoardList(pNum,boardType));
		mv.setViewName("board/boardFree");
		mv.addObject("pageList", pageList);
		mv.addObject("pageNum", pNum);
		return mv;
	}
	@RequestMapping("/boardList.trc")
	public ModelAndView getBoardPage() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardList");
		return mv;
	}
	@RequestMapping("/insertBoard.trc")
	public ModelAndView insertBoard(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/insertBoard");
		if(vo.getBoardNo()==null) {
			vo.setBoardNo("");
		}
		mv.addObject("boardNo", vo.getBoardNo());
		mv.addObject("boardType", vo.getBoardType());
		return mv;
	}
	@RequestMapping("/boardView.trc")
	public ModelAndView boardView(BoardVO vo) {
		System.out.println(vo.getBoardNo());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardView");
		BoardVO rvo = boardService.getBoardOne(vo);
		boardService.increaseCount(rvo);
		mv.addObject("board", rvo);
		return mv;
	}
	@RequestMapping("/deleteBoard.trc")
	public ModelAndView deleteBoard(BoardVO vo,HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		int result = boardService.deleteBoard(vo);
		response.setCharacterEncoding("UTF-8");
		PrintWriter pw = response.getWriter();
		pw.println("<script type='text/javascript'>");
		if(result==1) {
			pw.println("alert('파일이 삭제되었습니다.');");
		}else {
			pw.println("alert('파일 삭제에 실패하였습니다.');");
		}
		pw.println("history.back();");
		pw.println("</script>");
		pw.flush();
		mv.setViewName("board/boardList");
		return mv;
	}
	@RequestMapping("modifierBoard.trc")
	public ModelAndView modifierBoard(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardModify");
		mv.addObject("board", boardService.getBoardOne(vo));
		return mv;
	}
	@RequestMapping("modifyBoard.trc")
	public ModelAndView modifyBoard(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		int result = boardService.modifyBoard(vo);
		if(result==1) {
			mv.addObject("board", boardService.getBoardOne(vo));
			mv.setViewName("board/boardView");
		}
		mv.setViewName("board/boardList");
		return mv;
	}
}
