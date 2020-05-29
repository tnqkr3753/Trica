package com.trica.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	@RequestMapping("search.trc")
	public ModelAndView searchProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/searchView");
		return mv;
	}
	@RequestMapping("productDetail.trc")
	public ModelAndView detailProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/productDetail");
		return mv;
	}
}
