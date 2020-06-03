package com.trica.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.ProductService;
import com.trica.vo.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;

	@RequestMapping("search.trc")
	public ModelAndView searchProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/searchView");
		return mv;
	}

	@RequestMapping("productDetail.trc")
	public ModelAndView detailProduct() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/productDetail");	// 상품 상세 정보 페이지 창으로
		return mv;
	}

	@RequestMapping("productInsert.trc")
	public ModelAndView insertProduct() {
		// System.out.println("==========확인1==========");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/productInsert");	// 상품 등록 창으로
		return mv;
	}
	
	@RequestMapping("saveProduct.trc")
	public ModelAndView saveProduct(ProductVO vo) {
		vo.setScNo(vo.getBigC() + vo.getSmallC());
		// System.out.println("==========확인2==========");
		// System.out.println(vo.getPctName());
		// System.out.println(vo.getPctNo());
		
		ModelAndView mv = new ModelAndView();
		
		int result = productService.insertProduct(vo);
		mv.addObject("result", result);
		
		if(result == 1) mv.addObject("vo", vo);
		
		mv.setViewName("product/productConfirm");	// 상품등록 확인 페이지 창으로
		return mv;
	}

	@RequestMapping("goIndex.trc")
	public ModelAndView goIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goToIndex");	// 인덱스 창으로
		return mv;
	}
}