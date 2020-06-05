package com.trica.app;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.ProductService;
import com.trica.vo.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;

	@RequestMapping("productDetail.trc") 
	public ModelAndView detailProduct(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getPctNo());
		ProductVO rvo = productService.selectProduct(vo);
		mv.addObject("vo", rvo);
		productService.increaseCount(rvo);
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
	
	//Header Shop 클릭 시 전체상품 보이는 페이지로 이동
	@RequestMapping("getaList.trc")
	public ModelAndView getaList() { 
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("product/searchView");
		mv.addObject("sList", productService.getaList());
		return mv;  
	}        
	                 
	     
	  
	
	@RequestMapping("getNewList.trc")
	public ModelAndView getNewList(@RequestParam String tabName) {
		System.out.println("확인 출력");
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("product/getList");
		System.out.println(productService.getNewList().get(0).getPctName());
		
		/* if(tabName.contains("all")) {
			mv.addObject("list", productService.getNewList());	// 데이터 저장
			
		} else if (tabName.contains("popular")) {
			mv.addObject("list", productService.getAllList());
		} */ 
		 
		if(tabName.contains("new")) {
			System.out.println("----new-----");
			mv.addObject("list", productService.getNewList());	// 최근 입력된 상품 불러옴
		} else if (tabName.contains("all")) {
			System.out.println("----all-----");
			mv.addObject("list", productService.getAllList());	// 전체 상품목록 중 랜덤으로 불러옴
		} else if (tabName.contains("popular")) {
			System.out.println("----popular-----");
			mv.addObject("list", productService.getPopularList());	// 조회수 순으로 인기상품 불러옴
		} else if (tabName.contains("recommend")) {
			System.out.println("----recommend-----");
			mv.addObject("list", productService.getRecommendList());
		}
		mv.addObject("tabName", tabName);
		return mv;
	}
}