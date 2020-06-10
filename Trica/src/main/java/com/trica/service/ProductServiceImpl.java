package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.ProductDAO;
import com.trica.vo.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	int pagePerPct = 9;

	private int totalRecCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 6; // 한페이지당 레코드 수
	
	@Autowired
	ProductDAO productDAO;
	
	@Override
	public int insertProduct(ProductVO vo) {
		return productDAO.insertProduct(vo);
	}
		
	
	
	@Override
	public List<ProductVO> getNewList() {
		return productDAO.getNewList();	// 상품 리스트 리턴
	}
	
	@Override
	public List<ProductVO> getAllList() { 
		return productDAO.getAllList();	// 상품 리스트 리턴
	}
 
	@Override 
	public List<HashMap> getaList(String pageNum){  
		int pNum=1;
		if(pageNum != null) pNum = Integer.parseInt(pageNum);
		
		int firstRow = (pNum-1)*countPerPage+1;
		int endRow=pNum*countPerPage;
		
		return productDAO.getaList(firstRow, endRow); 
	} 

	@Override 
	public ProductVO selectProduct(ProductVO vo) {
		return productDAO.selectProduct(vo);
	}
	
	
	@Override
	public List<ProductVO> getPopularList() {
		return productDAO.getPopularList();	// 상품 리스트 리턴
	}
	
	@Override
	public List<ProductVO> getRecommendList() {
		return productDAO.getRecommendList();	// 상품 리스트 리턴
	}



	@Override
	public void increaseCount(ProductVO vo) {
		System.out.println("-------product cnt increase------");
		productDAO.increaseCount(vo);
	}
	
	
	
	
	
	@Override
	public List<ProductVO> getPctList(int pNum) {
		System.out.println("--------service.getPctList호출-----------");
		int startRow = (pNum-1)*pagePerPct+1;
		int endRow = (pNum)*pagePerPct;
		
		HashMap hash = new HashMap();
		hash.put("startRow", startRow);
		hash.put("endRow", endRow);
		
		return productDAO.getPctList(hash);
	}

	public List<HashMap> countRegPerDay() {
		return productDAO.countRegPerDay();
	}



	@Override
	public int getTotalCount() {
		totalRecCount = productDAO.getTotalCount();
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}
}