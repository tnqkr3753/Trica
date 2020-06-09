package com.trica.app;

import java.awt.List;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.SearchService;
import com.trica.vo.ProductVO;

@Controller
public class SearchController {
	@Autowired
	SearchService searchService;
	@RequestMapping("search.trc")
	public ModelAndView searchProduct(String title,String big_category,String small_category ,String pNum) {
		
		ProductVO vo = new ProductVO();
		vo.setPctName(title);
		vo.setScNo(big_category+small_category);
		//vo로 select문을 통해서 해당하는 값들을 가져와서 mv에 addObject로 페이지에 보내주기
		//페이지에서 받은 vo List를 이용하여 상품창 띄우기
		//만약 pNum이 null이면 
				String pageNum="1";
				if(pNum != null) 
					{pageNum =pNum ;}
				//전체페이지 수 가져오기 
				int totalPage=searchService.getSearchCount(vo);
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("title",title);
		System.out.println(title+ "제목이야아````````````````````````````````````");
		mv.addObject("big_category",big_category);
		System.out.println(big_category+ "제목이야아````````````````````````````````````");

		mv.addObject("small_category",small_category);
		mv.addObject("totalPage", totalPage);
		mv.addObject("sList", searchService.getSearchList(vo,pageNum));
		mv.setViewName("product/searchView");
		return mv;
	} 
	/*
	 * @RequestMapping("search.trc")
	  public ModelAndView searchProduct(@RequestParam HashMap<String,Object> map) {
		
		ProductVO vo = new ProductVO();
		vo.setPctName((String)map.get("title"));
		vo.setScNo((String)map.get("big_category")+(String)map.get("small_category"));
		System.out.println(vo.getPctName());
		System.out.println(vo.getScNo());
		//vo로 select문을 통해서 해당하는 값들을 가져와서 mv에 addObject로 페이지에 보내주기
		//페이지에서 받은 vo List를 이용하여 상품창 띄우기
		System.out.println(vo.getPctName());
		ModelAndView mv = new ModelAndView();  
		mv.addObject("sList", searchService.getSearchList(vo));
		mv.setViewName("product/searchView");
		return mv;
	} 
	 */
	
	 
	 @RequestMapping("bigSearch.trc")
	public ModelAndView bigSearch(@RequestParam String bcNo,String pNum) {
		//만약 pNum이 null이면 
		String pageNum="1";
		if(pNum != null) 
			{pageNum =pNum ;}
		//전체페이지 수 가져오기 
		int totalPage=searchService.getTotalCount(bcNo);
		System.out.println("===============큰 카테고리 출력=================");

		// --------------------------------------------------------------------------------
		System.out.println(bcNo); 
		ModelAndView mv = new ModelAndView();
		System.out.println(searchService.getBigSearch(bcNo, pageNum));
		//리스트가져오기
		mv.addObject("sList", searchService.getBigSearch(bcNo, pageNum));
		mv.setViewName("product/searchView");
		mv.addObject("totalPage", totalPage);
		// --------------------------------------------------------------------------------
		mv.addObject("bcNo", bcNo);
		
		System.out.println(bcNo);
		
		return mv;
	} 
	
} 