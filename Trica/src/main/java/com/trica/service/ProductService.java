package com.trica.service;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO vo);
	public ProductVO selectProduct(ProductVO vo);
	
	public List<ProductVO> getNewList();
	public List<ProductVO> getAllList(); 
	public List<HashMap> getaList();
	public List<ProductVO> getPopularList();
	public List<ProductVO> getRecommendList();
	public void increaseCount(ProductVO vo);
	
	
	
	public List<ProductVO> getPctList(int pNum);
	
	
	
	public List<HashMap> countRegPerDay();

}  