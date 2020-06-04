package com.trica.app;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;

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
		newValue.append(hash.get("pctNo")+"&"+hash.get("pctStock")+"&"+hash.get("totalPrice")+"#");
		if(cookies!=null) {
			for (Cookie ck : cookies) {
				if(ck.getName().equals("viewPctNo")) {
					newValue.append(URLDecoder.decode(ck.getValue(),"UTF-8")); //pctno&pctno
				}
			}
		}
		kie = new Cookie("viewPctNo", URLEncoder.encode(newValue.toString(), "UTF-8"));
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
	public ModelAndView getCart() {
		ModelAndView mv = new ModelAndView();
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
