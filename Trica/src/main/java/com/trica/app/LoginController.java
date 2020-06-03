package com.trica.app;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.ognl.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.trica.service.MemberService;
import com.trica.vo.MemberVO;

@Controller 
public class LoginController {
	
	@Autowired
	MemberService memberService; 
	
	//로그인 
	@RequestMapping("LoginPage.trc")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login"); 
		return mv; 
	}   
	
	@RequestMapping("Login.trc")
	public ModelAndView login(MemberVO vo,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		System.out.println(vo.getMemberId());
		MemberVO result = memberService.login(vo);
		
		if(result != null) {
			mv.setViewName("goIndex");
			session.setAttribute("memberId", vo.getMemberId());
		}else {
			mv.setViewName("member/login");  
		}  
		return mv;    
	}    
		 
	  
	//회원가입
	@RequestMapping("Register.trc")  
	public ModelAndView register() { 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/Register");
		return mv;   
	} 
	
	@RequestMapping("Regist.trc")
	public ModelAndView regist(MemberVO vo) { 
		ModelAndView mv = new ModelAndView();
		  
//		System.out.println(vo.getGender()); 
//		System.out.println(vo.getMemberType());
		  
		int result = memberService.insertMember(vo);
		if(result==0) {
			mv.setViewName("member/Register");
		}else { 
			mv.setViewName("member/login"); 
		}
		return mv; 
	}
	//로그아웃
	@RequestMapping("/logout.trc")
	public ModelAndView logOut(HttpSession session) {
		session.removeAttribute("memberId");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goIndex");
		return mv; 
	}
	 
	//회원정보 보기   
	@RequestMapping("/Modifier.trc")
	public ModelAndView modifier(HttpSession session) {
		MemberVO rvo = new MemberVO();
		rvo.setMemberId((String)session.getAttribute("memberId"));
		MemberVO vo = memberService.login(rvo); 
	 	StringTokenizer str = new StringTokenizer(vo.getAddress(),"%_");
		HashMap hash = new HashMap();    
		for (int i = 0; str.hasMoreTokens(); i++) {
			hash.put("addr"+i, str.nextToken()); 
		} 
		//string
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("member/Register"); 
		mv.addObject("vo", vo); 
		mv.addObject("addr", hash); 
		return mv;     
	}  
	  
	//회원정보 수정  
	@RequestMapping("/Updater.trc") 
	public ModelAndView updater(HttpSession session) {
		MemberVO rvo = new MemberVO();
		rvo.setMemberId((String)session.getAttribute("memberId"));
		MemberVO vo = memberService.login(rvo);  
		System.out.println(vo.getPassword());
		System.out.println(vo.getTel());     
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("member/Register");  
		mv.addObject("vo", vo); 
		return mv;  
	}  
	
}             