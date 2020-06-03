package com.trica.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
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
	
	@RequestMapping("orderList.trc")
	public ModelAndView getOrderList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart/order-list");
		return mv;
	}
}
