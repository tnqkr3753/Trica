package com.trica.service;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO vo);
	public ProductVO selectProduct(ProductVO vo);
	public List<ProductVO> getNewList();
	public int modifyProduct(ProductVO vo);  
	public int deleteProduct(ProductVO vo);
	public List<ProductVO> getAllList(); 
	public List<HashMap> getaList(String pageNum);
	public List<ProductVO> getPopularList();
	public List<ProductVO> getRecommendList();
	public List<ProductVO> productList();//상품리스트
	public void increaseCount(ProductVO vo);
	public List<ProductVO> getPctList(int pNum);
	public List<HashMap> countRegPerDay();
	public int getTotalCount();
}  
