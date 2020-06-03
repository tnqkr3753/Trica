package com.trica.dao;

import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO vo);
	
	
	public List<ProductVO> getNewList();
	public List<ProductVO> getAllList();

}