package com.trica.dao;

import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO vo);
	
	
	List<ProductVO> getNewList();
}