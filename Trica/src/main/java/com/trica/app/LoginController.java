package com.trica.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.MemberService;
import com.trica.vo.BoardVO;
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
		
		MemberVO result = memberService.login(vo);
		 
		if(result != null) { 
			mv.setViewName("goIndex");  
			session.setAttribute("memberId", result.getMemberId());
			session.setAttribute("memberType", result.getMemberType());
			   
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
		int result = memberService.insertMember(vo);
		if(result==1) { 
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
		session.removeAttribute("memberType"); 
		MemberVO vo = new MemberVO(); 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goToIndex");	//인덱스 화면으로 
		System.out.println(vo.getMemberId());
		System.out.println(vo.getMemberType()); 
		return mv;    
	}    
 	
	@RequestMapping("/goToIndex.trc")
	public void goIndex() { 
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
	public ModelAndView updater(MemberVO vo,HttpServletResponse response) throws IOException { 
		System.out.println("----컨트롤러 실행--------"); 
		System.out.println(vo.getMemberId()+"이름:"+vo.getMemberName());
		int result = memberService.memberUpdate(vo);  
		ModelAndView mv = new ModelAndView();  
		response.setCharacterEncoding("UTF-8");
		if(result==1) {   
			mv.setViewName("goToIndex");
		}else{          
			mv.setViewName("member/Register");
		}      
		mv.addObject("vo", vo);           
		return mv;          
	}         
	 
	//회원정보 수정을 위한 비밀번호 체크    
	@RequestMapping("/passChk.trc")  
	public ModelAndView passChk(MemberVO vo,HttpSession session,HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		vo.setMemberId((String)session.getAttribute("memberId"));
		
		MemberVO rvo = memberService.login(vo);  
		if(rvo!=null) {  
			mv.setViewName("redirect:/Modifier.trc");
		}else {   
			mv.setViewName("member/passChk");  
			response.setCharacterEncoding("UTF-8");
			PrintWriter pw = response.getWriter();  
			pw.println("<script type='text/javascript'>");
			pw.println("alert('비밀번호가 틀립니다.');");
			pw.println("history.back();");     
			pw.println("</script>");     
			pw.flush();   
		}   
		return mv;    
	} 
	
	//회원정보 수정 눌렀을 시 비밀번호 체크 페이지 
	@RequestMapping("/goChk.trc") 
	public ModelAndView goChk() {  
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/passChk");
		return mv;
	}
   
}              