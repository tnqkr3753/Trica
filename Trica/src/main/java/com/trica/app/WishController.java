package com.trica.app;

import java.awt.List;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.WishService;
import com.trica.vo.WishVO;

@Controller
public class WishController {
	@Autowired
	WishService wishService;
	
	//찜목록 추가 누를 때
	@ResponseBody
	@RequestMapping(value="/addWish.trc",produces = "application/text; charset=utf8")
	public String addWish(@RequestBody HashMap<String, Object> hash,
			HttpSession session) {
		String memberId= (String) session.getAttribute("memberId");
		if(memberId==null) {
			return "로그인 후에 사용해주세요";
		}
		WishVO vo = new WishVO();
		vo.setMemberId(memberId);
		vo.setPctNo((String) hash.get("pctNo"));
		WishVO resultVO = wishService.selectWish(vo);
		//찜목록에 존재하는지 확인
		if(resultVO!=null) {
			return "이미 찜목록에 존재하는 상품입니다.";
		}
		int result = wishService.insertWish(vo);
		if(result != 0) {
			return "찜목록에 추가되었습니다.";
		}
		//중복제거
		return "찜목록 추가가 실패되었습니다.";
	}
	//찜목록창 누를 때
	@RequestMapping("favorite.trc")
	public ModelAndView getFavorite(HttpSession session,HttpServletRequest request) {
		String memberId = (String)session.getAttribute("memberId");
		ModelAndView mv = new ModelAndView();
		if (memberId==null) {
			mv.setViewName("redirect:index.jsp");
		}else {
			WishVO vo = new WishVO();
			vo.setMemberId(memberId);
			mv.addObject("wList", wishService.selectWishProduct(vo));
			mv.setViewName("cart/user-favorite");
		}
		return mv;
	}
	//찜목록에서 삭제버튼 누를 때
	@ResponseBody
	@RequestMapping(value="deleteWish.trc",produces = "application/text; charset=utf8")
	public String deleteWish(@RequestBody HashMap hash) {
		String likeNo = (String)hash.get("delLikeNo");
		if(likeNo == null) {
			return "선택된 품목이 없습니다.";
		}
		System.out.println(likeNo);
		WishVO vo = new WishVO();
		vo.setLikeNo(likeNo);
		int result =wishService.deleteWish(vo);
		if(result != 1) {
			return "찜목록에서 삭제에 실패하였습니다.";
		}
		return "찜목록에서 삭제하였습니다.";
	}
}
