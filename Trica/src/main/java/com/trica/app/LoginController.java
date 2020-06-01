package com.trica.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("LoginPage.trc")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
		return mv;
	}
	@RequestMapping("Register.trc")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/Register");
		return mv;
	}
}