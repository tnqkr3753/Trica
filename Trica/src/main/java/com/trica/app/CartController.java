package com.trica.app;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.vo.ProductVO;

@Controller
public class CartController {
	@RequestMapping("/addCart.trc")
	public String addCart(ProductVO vo,HttpServletRequest request,HttpServletResponse response) {
		System.out.println("-----addCart------");
		Cookie[] cookies = request.getCookies();
		Cookie kie = null;
		if(cookies!=null) {
		for (Cookie ck : cookies) {
				if(ck.getName().equals("pctNo")) {
					kie = new Cookie("pctNo",ck.getValue()+vo.getPctNo()+"&");
				}
			}
		}else {
			kie = new Cookie("pctNo", vo.getPctNo()+"&");
		}
		response.addCookie(kie);
		//TODO 쿠키 if문 안걸려도 생성되게 stringbuffer사용
		return "redirect:/";
	}
	@RequestMapping("/addWish.trc")
	public ModelAndView addWish(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user-favorite");
		return mv;
	}
	@RequestMapping("/addBuy.trc")
	public ModelAndView addBuy(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user-cart");
		return mv;
	}
	@RequestMapping("/orderList.trc")
	public ModelAndView getOrderList(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("order-list");
		return mv;
	}
	@RequestMapping("cart.trc")
	public ModelAndView getCart() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart/user-cart");
		return mv;
	}
	
	@RequestMapping("favorite.trc")
	public ModelAndView getFavorite() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart/user-favorite");
		return mv;
	}
}
