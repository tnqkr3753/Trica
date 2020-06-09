package com.trica.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
 
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.ProductService;
import com.trica.vo.ProductVO;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@RequestMapping("productDetail.trc")  
	public ModelAndView detailProduct(ProductVO vo) {
		ModelAndView mv = new ModelAndView();
		ProductVO rvo = productService.selectProduct(vo);
		mv.addObject("vo", rvo);
		productService.increaseCount(rvo);
		mv.setViewName("product/productDetail");	// 상품 상세 정보 페이지 창으로
		return mv;
	}  


	@RequestMapping("productInsert.trc") 
	public ModelAndView insertProduct() {
		// System.out.println("==========확인1==========");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/productInsert");	// 상품 등록 창으로
		return mv;
	}


	@RequestMapping("saveProduct.trc")
	public ModelAndView saveProduct(ProductVO vo) {
		vo.setScNo(vo.getBigC() + vo.getSmallC());
		// System.out.println("==========확인2==========");
		// System.out.println(vo.getPctName()); 
		// System.out.println(vo.getPctNo());

		ModelAndView mv = new ModelAndView();

		int result = productService.insertProduct(vo);
		mv.addObject("result", result);

		if(result == 1) mv.addObject("vo", vo);

		mv.setViewName("product/productConfirm");	// 상품등록 확인 페이지 창으로
		return mv;
	} 

	@RequestMapping("goIndex.trc")
	public ModelAndView goIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goToIndex");	// 인덱스 창으로
		return mv;
	} 


	@RequestMapping("getNewList.trc")
	public ModelAndView getNewList(@RequestParam String tabName) {
		System.out.println("확인 출력");
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("product/getList");

		if(tabName.contains("new")) {
			mv.addObject("list", productService.getNewList());	// 최근 입력된 상품 불러옴
		} else if (tabName.contains("all")) {
			mv.addObject("list", productService.getAllList());	// 전체 상품목록 중 랜덤으로 불러옴
		} else if (tabName.contains("popular")) {
			mv.addObject("list", productService.getPopularList());	// 조회수 순으로 인기상품 불러옴
		} else if (tabName.contains("recommend")) {
			mv.addObject("list", productService.getRecommendList());
		}
		mv.addObject("tabName", tabName);
		return mv;
	} 

	//Header Shop 클릭 시 전체상품 보이는 페이지로 이동
	@RequestMapping("getaList.trc") 
	public ModelAndView getaList() { 
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("product/searchView");
		mv.addObject("sList", productService.getaList());
		return mv;  
	}        
 
	//상품정보 수정 
	@RequestMapping("productModify.trc") 
	public ModelAndView modifyProduct(ProductVO vo, HttpServletResponse response) throws IOException {
		System.out.println(vo);
		int result = productService.modifyProduct(vo); 
		ModelAndView mv = new ModelAndView();
		response.setCharacterEncoding("UTF-8");  
		PrintWriter pw = response.getWriter();  
		pw.println("<script type='text/javascript'>");
		if(result==1) {                
			pw.println("alert('상품정보가 수정되었습니다.');");
			mv.setViewName("product/productList");    
		}else{              
			pw.println("alert('상품정보 수정에 실패하였습니다.');"); 
			mv.setViewName("product/productInsert");     
		}    
		pw.println("history.back();");    
		pw.println("</script>");  
		pw.flush();  
		mv.addObject("vo", vo);    
		return mv; 
	}                     
  

	//상품정보 페이지 이동 
	@RequestMapping("/goModify.trc")
	public ModelAndView goModify(ProductVO vo) { 
		ModelAndView mv = new ModelAndView(); 
		ProductVO rvo = productService.selectProduct(vo);
		String scNo = rvo.getScNo();  
		rvo.setBigC(scNo.substring(0, 1)); 
		rvo.setSmallC(scNo.substring(1, 2));
		mv.setViewName("product/productInsert"); 
		mv.addObject("result", rvo);
		return mv;      
	}       

 
	//상품 삭제
	@RequestMapping("productDelete.trc")
	public ModelAndView deleteProduct(ProductVO vo, HttpServletResponse response) throws IOException {
		System.out.println(vo); 
		vo.setScNo(vo.getBigC() + vo.getSmallC());
		ModelAndView mv = new ModelAndView();  
		int result = productService.deleteProduct(vo);
		// alert창 java에서 이용       
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter pw = response.getWriter();
		pw.println("<script type='text/javascript'>"); 
		if(result==1) { 
			pw.println("alert('상품이 삭제되었습니다.');");  	 
		}else {     
			pw.println("alert('상품 삭제에 실패하였습니다.');");
		} 
		pw.println("history.back();");    
		pw.println("</script>");   
		pw.flush();
		mv.setViewName("product/productList"); 
		return mv;
	}      


	//상품리스트
	@RequestMapping("/productList.trc")
	public ModelAndView list() {  
		ModelAndView mv = new ModelAndView();
		List<ProductVO> list = productService.productList();
		mv.setViewName("product/productList");	// 상품리스트 창으로
		mv.addObject("list", list); 
		return mv; 
	}    
	 
}
