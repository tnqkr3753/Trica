package com.trica.service;

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
	public List<ProductVO> getPopularList() {
		return productDAO.getPopularList();	// 상품 리스트 리턴
	}
	
	@Override
	public List<ProductVO> getRecommendList() {
		return productDAO.getRecommendList();	// 상품 리스트 리턴
	}
}