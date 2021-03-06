package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO vo);
	public int modifyProduct(ProductVO vo); 
	public int deleteProduct(ProductVO vo);
	   
	public ProductVO selectProduct(ProductVO vo);
	public List<ProductVO> getNewList();
	public List<ProductVO> getAllList();
	public List<HashMap> getaList(int firstRow, int endRow);
	public List<ProductVO> getPopularList();
	public List<ProductVO> getRecommendList();
	public List<ProductVO> productList();
	public void increaseCount(ProductVO vo);
	public List<ProductVO> getPctList(HashMap hash);
	public List<HashMap> countRegPerDay();
	public int getTotalCount();
}
