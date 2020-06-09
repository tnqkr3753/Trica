package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.ProductDAO;
import com.trica.vo.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
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
	public List<HashMap> getaList(){  
		return productDAO.getaList(); 
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

  
	//상품수정	
	@Override 
	public int modifyProduct(ProductVO vo) {  
		return productDAO.modifyProduct(vo);
	} 
	 
	
	//상품삭제
	@Override 
	public int deleteProduct(ProductVO vo) {
		return productDAO.deleteProduct(vo);
	}


	//상품목록 리스트
	@Override
	public List<ProductVO> productList() {
		System.out.println("리스트");
		return productDAO.productList(); 
	}
	   
}