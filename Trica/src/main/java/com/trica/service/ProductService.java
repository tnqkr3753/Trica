package com.trica.service;

import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO vo);
	
	
	public List<ProductVO> getNewList();
}