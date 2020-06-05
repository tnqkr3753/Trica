package com.trica.intercaptor;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
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
			sb.append("시간:"+timeSecond+", ip:"+request.getLocalAddr()+", 요청페이지:"+request.getServletPath()+", 이전페이지:"+request.getHeader("referer")+", 지역:"+response.getLocale()+"\r\n");
			PrintWriter writer = new PrintWriter(bw, true);
			writer.write(sb.toString());
			writer.close();
			bw.close();
		return super.preHandle(request, response, handler);
	}
}
