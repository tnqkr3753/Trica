package com.trica.app;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView orderSuccess(OrderSubmitVO vo,HttpSession session) {
		boolean state = true;;
		OrderVO ovo = vo.getOvo();
		ovo.setMemberId((String)session.getAttribute("memberId"));
		int orderResult = orderService.insertOrder(ovo);
		System.out.println(vo.getOvo().getOrderNo());
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
		//거래가 성공(db추가 성공)이면
		if(state) {
			
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goToIndex");
		return mv;
	}
}
