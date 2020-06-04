package com.trica.app;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.trica.vo.ProductVO;

@Controller
public class CartController {
	@ResponseBody
	@RequestMapping(value="/addCart.trc",produces = "application/text; charset=utf8")
	public String addCart(@RequestBody HashMap<String, Object> hash,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
		System.out.println("-----addCart------");
		Cookie[] cookies = request.getCookies();
		Cookie kie = null;
		StringBuffer newValue = new StringBuffer();
		newValue.append(hash.get("pctNo")+"&"+hash.get("pctStock")+"&"+hash.get("totalPrice")+"&"+hash.get("pctImgName")+"#");
		if(cookies!=null) {
			for (Cookie ck : cookies) {
				if(ck.getName().equals("cartPctNo")) {
					newValue.append(URLDecoder.decode(ck.getValue(),"UTF-8")); //pctno&pctno
				}
			}
		}
		kie = new Cookie("cartPctNo", URLEncoder.encode(newValue.toString(), "UTF-8"));
		kie.setMaxAge(60*60*24); //하루로 기간설정
		response.addCookie(kie);
		return "장바구니에 추가되었습니다.";
	}
	@RequestMapping("/addWish.trc")
	public ModelAndView addWish(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user-favorite");
		return mv;
	}
	@RequestMapping("/addBuy.trc")
	public ModelAndView addBuy(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user-cart");
		return mv;
	}
	@RequestMapping("/orderList.trc")
	public ModelAndView getOrderList(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("order-list");
		return mv;
	}
	@RequestMapping("cart.trc")
	public ModelAndView getCart(HttpServletRequest request) {
		//쿠기 값 받아서 list로 만들기
		Cookie[] ck = request.getCookies();
		StringBuffer sb = new StringBuffer();
		String ckValue = "";
		if(ck!=null) {
			for (Cookie cookie : ck) {
				if(cookie.getName().equals("cartPctNo")) {
					ckValue = cookie.getValue();
					break;
				}
			}
		}
		StringTokenizer st = new StringTokenizer(ckValue,"#");
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		for(int i=1; st.hasMoreTokens();i++) {
			ArrayList<String> arr = new ArrayList<String>();
			arr.add(String.valueOf(i));
			StringTokenizer st2 = new StringTokenizer(st.nextToken(), "&");
			while(st2.hasMoreTokens()) {
				arr.add(st2.nextToken());
			}
			list.add(arr);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("cList", list);
		mv.setViewName("cart/user-cart");
		return mv;
	}
	
	@RequestMapping("favorite.trc")
	public ModelAndView getFavorite() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart/user-favorite");
		return mv;
	}
}
