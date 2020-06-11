package com.trica.intercaptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class TypeInterceptor extends HandlerInterceptorAdapter {
	Logger Logger = LoggerFactory.getLogger(TypeInterceptor.class);
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("memberId");
		String type = (String)session.getAttribute("memberType");
		if(obj==null) {
			Logger.warn(request.getRemoteAddr()+"&"+request.getServletPath()+"&"+request.getHeader("referer")+"#");
			response.sendRedirect("LoginPage.trc");
			return false;
		}else {
			if(!type.equals("1")) {
				Logger.warn(request.getRemoteAddr()+"&"+request.getServletPath()+"&"+request.getHeader("referer")+"#");
				response.sendRedirect("goToIndex.trc");
				return false;
			}
		}
		return true;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
}
