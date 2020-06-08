package com.trica.app;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.asm.TypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
		newValue.append(hash.get("pctNo")+"&"+hash.get("pctName")+"&"+hash.get("pctStock")+"&"+hash.get("totalPrice")+"&"+hash.get("pctImgName")+"#");
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
		ArrayList<ArrayList<String>> list = getCartAsFromCookie(ckValue, "all",new String[0]);
		mv.addObject("cList", list);
		mv.setViewName("cart/user-cart");
		return mv;
	}

	//장바구니에서 삭제하기 누를 때
	@ResponseBody
	@RequestMapping(value="deleteCookie.trc",produces = "application/text; charset=utf8")
	public String deleteCookie(@RequestBody HashMap hash,@CookieValue(value="cartPctNo",required = true) String ckValue,
			HttpServletResponse response) {
		//ckValue가 default값이 아닐 때
		Cookie ck = new Cookie("cartPctNo", getCookieString(ckValue, "delete", (String)hash.get("delPctIndex")));
		ck.setMaxAge(-1);
		response.addCookie(ck);
		return "장바구니에서 삭제되었습니다.";
	}
	
	//쿠키에서 장바구니 가져오기 type =all, select
	private ArrayList<ArrayList<String>> getCartAsFromCookie(String ckValue,String type,String[] index) {
		//TODO 인덱스 값에 있는 것들만 가져오는 알고리즘 만들기 -> orderList에 적용
		ArrayList<ArrayList<String>> list = new ArrayList<ArrayList<String>>();
		if(!ckValue.equals("")){
			StringTokenizer st = new StringTokenizer(ckValue,"#");
			for(int i=1; st.hasMoreTokens();i++) {
				System.out.println("i:"+i);
				boolean flag = true;
				//type이 select인데 인덱스와 i가 맞지 않으면 리스트로 안가져옴
				for (int j = 0;type.equals("select")&& j < index.length; j++) {
					flag=false;
					if(index[j].equals(String.valueOf(i))) {
						flag=true;
						break;
					}
				}
				if(flag) {
					ArrayList<String> arr = new ArrayList<String>();
					arr.add(String.valueOf(i));
					StringTokenizer st2 = new StringTokenizer(st.nextToken(), "&");
					while(st2.hasMoreTokens()) {
						arr.add(st2.nextToken());
					}
					list.add(arr);
				}else {
					//false이면 한 데이터 패스
					st.nextToken();
				}
			}
		}
		return list;
	}
	//패턴이 들어간 string을 index로 삭제 type=delete,  index = 삭제할 장바구니번호
	private String getCookieString(String ckValue,String type,String index) {
		StringBuffer sb = new StringBuffer();
		if(!ckValue.equals("")){
			//쿠키를 #으로 자른다
			System.out.println("-----if문진입----");
			StringTokenizer st = new StringTokenizer(ckValue,"#");
			for(int i=1; st.hasMoreTokens();i++) {
				//자른 값마다 다시 &로 잘라 각자의 값을 받아온다.
				String tok = st.nextToken();
				if(type.equals("delete")&&String.valueOf(i).equals(index)) {
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
		return sb.toString();
	}
	//구매하기 누를 때
	@RequestMapping("orderConfirm.trc")
	public ModelAndView orderConfirm(@RequestParam(value = "orderPctIndex") String obj,@CookieValue(value="cartPctNo",required = true) String ckValue) throws JsonParseException, JsonMappingException, IOException {
		ObjectMapper om = new ObjectMapper();
		//json형식의 obj를 String[]로 만드는 과정
		String[] arr = om.readValue(obj, String[].class);
		for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
		ArrayList<ArrayList<String>> list = getCartAsFromCookie(ckValue, "select",arr);
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("oList", list);
		mv.setViewName("order/orderConfirm");
		return mv;
	}
}
