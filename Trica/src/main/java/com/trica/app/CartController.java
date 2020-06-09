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
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.trica.vo.ProductVO;

@Controller
public class CartController {
	//장바구니추가 누를 때
	@ResponseBody
	@RequestMapping(value="/addCart.trc",produces = "application/text; charset=utf8")
	public String addCart(@RequestBody HashMap<String, Object> hash,
								HttpServletRequest request,HttpServletResponse response
								) throws UnsupportedEncodingException {
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
		kie.setMaxAge(-1); //브라우저끄면 삭제
		response.addCookie(kie);
		return "장바구니에 추가되었습니다.";
	}
	//찜목록 추가 누를 때
	@ResponseBody
	@RequestMapping("/addWish.trc")
	public String addWish(@RequestBody HashMap<String, Object> hash) {
		
		return "장바구니에 추가되었습니다.";
	}
	//구매하기 누를 때
	@RequestMapping("/addBuy.trc")
	public ModelAndView addBuy(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user-cart");
		return mv;
	}
	//주문목록 누를 때
	@RequestMapping("/orderList.trc")
	public ModelAndView getOrderList(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("order-list");
		return mv;
	}
	//장바구니창 누를 때
	@RequestMapping("cart.trc")
	public ModelAndView getCart(@CookieValue(value="cartPctNo",required = true,defaultValue = "") String ckValue) throws UnsupportedEncodingException {
		//쿠기 값 받아서 list로 만들기
		ModelAndView mv = new ModelAndView();
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		if(!ckValue.equals("")){
			StringTokenizer st = new StringTokenizer(ckValue,"#");
			for(int i=1; st.hasMoreTokens();i++) {
				ArrayList<String> arr = new ArrayList<String>();
				arr.add(String.valueOf(i));
				StringTokenizer st2 = new StringTokenizer(st.nextToken(), "&");
				while(st2.hasMoreTokens()) {
					arr.add(st2.nextToken());
				}
				list.add(arr);
			}
		}
		mv.addObject("cList", list);
		mv.setViewName("cart/user-cart");
		return mv;
	}
	//찜목록창 누를 때
	@RequestMapping("favorite.trc")
	public ModelAndView getFavorite() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart/user-favorite");
		return mv;
	}
	//장바구니에서 삭제하기 누를 때
	@ResponseBody
	@RequestMapping(value="deleteCookie.trc",produces = "application/text; charset=utf8")
	public String deleteCookie(@RequestBody HashMap hash,@CookieValue(value="cartPctNo",required = true) String ckValue,
			HttpServletResponse response) {
		System.out.println("-----delcookie----");
		System.out.println("hash값:"+hash.get("delPctIndex"));
		StringBuffer sb = new StringBuffer();
		//ckValue가 default값이 아닐 때
		if(!ckValue.equals("")){
			//쿠키를 #으로 자른다
			System.out.println("-----if문진입----");
			StringTokenizer st = new StringTokenizer(ckValue,"#");
			for(int i=1; st.hasMoreTokens();i++) {
				//자른 값마다 다시 &로 잘라 각자의 값을 받아온다.
				String tok = st.nextToken();
				if(String.valueOf(i).equals(hash.get("delPctIndex"))) {
					continue;
				}
				StringTokenizer st2 = new StringTokenizer(tok, "&");
				while(st2.hasMoreTokens()) {
					//첫번째값=no
					sb.append(st2.nextToken()); //1번이 아닐경우 sb에 저장
					sb.append("&");
				}
				sb.append("#");
			}
		}
		Cookie ck = new Cookie("cartPctNo", sb.toString());
		ck.setMaxAge(-1);
		response.addCookie(ck);
		return "장바구니에서 삭제되었습니다.";
	}
	
	
	
	
	
	
	// user-cart 창에서 orderConfirm 창으로
	@RequestMapping("orderConfirm.trc")
	public ModelAndView orderConfirm() {
		
		System.out.println("***** 결제상세내역 *****");
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("order/orderConfirm");
		
		return mv;
	}
}