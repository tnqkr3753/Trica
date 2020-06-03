package com.trica.service;

import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO vo);
	public ProductVO selectProduct(ProductVO vo);
	
	public List<ProductVO> getNewList();
	public List<ProductVO> getAllList();
	public List<ProductVO> getPopularList();
	public List<ProductVO> getRecommendList();

}