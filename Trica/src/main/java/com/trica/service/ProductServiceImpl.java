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
}