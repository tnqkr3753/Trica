package com.trica.app;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.BcateService;

@Controller
public class BcateController {
	
	@Autowired
	BcateService bcateService;
	@RequestMapping("/countCate.trc")
	public ModelAndView counter() {
		//string
		ModelAndView mv = new ModelAndView();  
		mv.setViewName("index/categories");
		List<HashMap> list = bcateService.countBcate();
		System.out.println(list);
		mv.addObject("list", list); 
		return mv;     
	}  
	  
} 
