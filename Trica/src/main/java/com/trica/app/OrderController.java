package com.trica.app;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.OrderService;
import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderSubmitVO;
import com.trica.vo.OrderVO;

@Controller
public class OrderController {
	@Autowired
	OrderService orderService;
	
	//결제완료 order와 orderProduct와 delivery 데이터베이스에 접근
	@RequestMapping("orderSuccess.trc")
	public ModelAndView orderSuccess(String pNum, OrderSubmitVO vo,HttpSession session,
			@CookieValue(value="cartPctNo",required = true,defaultValue = "") String ckValue,
			HttpServletResponse response) {
		boolean state = true;
		OrderVO ovo = vo.getOvo();
		ovo.setMemberId((String)session.getAttribute("memberId"));
		int orderResult = orderService.insertOrder(ovo);
		if(orderResult==1) {
			for(OrderProductVO pvo :vo.getPvoList()) {
				pvo.setOrderNo(vo.getOvo().getOrderNo());
				if(orderService.insertOrderProduct(pvo)!=1) {
					state = false;
				}
				System.out.println(pvo);
			}
			DeliveryVO dvo = vo.getDvo();
			dvo.setOrderNo(ovo.getOrderNo());
			if(orderService.insertDelivery(dvo)!=1) {
				//실패시 delivery
				state = false;
			}
			System.out.println(dvo);
		}
		//거래가 성공(db추가 성공)이면 쿠키에서 해당 인덱스값들 삭제
		if(state) {
			CartController ccr = new CartController();
			//역순 탐색 (인덱스값을 작은것부터하면 큰 값의 index가 바뀜)
			for(int i = vo.getIndexList().size()-1;i >= 0;i--) {
			//for(String index :vo.getIndexList()) {
				String index =vo.getIndexList().get(i);
				System.out.println("index : "+index);
				System.out.println(ckValue);
				ckValue = ccr.getCookieString(ckValue, "delete", index);
			}
		}
		System.out.println("마지막ckvalue : "+ ckValue);
		Cookie kie = new Cookie("cartPctNo", ckValue);
		kie.setMaxAge(-1);
		response.addCookie(kie);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/orderPaging.trc");
		
		return mv;
	}
	
	/*
	 * 페이징 된 주문목록 보여주기
	 */
	@RequestMapping("orderPaging.trc")
	public ModelAndView orderSuccess(String pNum, HttpSession session, HttpServletResponse response) {
		
		String memberId = (String)session.getAttribute("memberId");	// session에서 회원아이디 얻어와서 memberId에 저장
		
		System.out.println("회원ID 출력 확인 : " + memberId);
		
		String pageNum = "1";
		
		if (pNum != null) {
			pageNum = pNum;
		}
		
		int totalPage = orderService.getTotalCount(memberId);	// 전체 페이지 수
		
		System.out.println("전체 페이지 수 출력 확인 : " + totalPage);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("totalPage", totalPage);
		mv.addObject("list", orderService.selectOrder(memberId, pageNum));
		
		mv.setViewName("cart/order-list");
		
		return mv;
	}
	
	
}
