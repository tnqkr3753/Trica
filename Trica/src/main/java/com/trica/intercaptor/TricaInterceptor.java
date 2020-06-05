package com.trica.intercaptor;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class TricaInterceptor extends HandlerInterceptorAdapter {
	protected Logger logger = LoggerFactory.getLogger(TricaInterceptor.class);
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
			SimpleDateFormat format = new SimpleDateFormat("yyyy년MM월dd일 HH시mm분ss초");
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String timeSecond = format.format(date);
			String time = format2.format(date);
			File file = new File("D:\\trica-log\\log\\"+time+".log");
			BufferedWriter bw = new BufferedWriter(new FileWriter(file,true));
			StringBuffer sb = new StringBuffer();
			sb.append(timeSecond+"&"+request.getRemoteAddr()+"&"+request.getSession().getAttribute("memberId")+"&"+request.getServletPath()+"&"+request.getHeader("referer")+"&"+response.getLocale()+"@");
			PrintWriter writer = new PrintWriter(bw, true);
			writer.write(sb.toString());
			writer.close();
			bw.close();
		return super.preHandle(request, response, handler);
	}
}
