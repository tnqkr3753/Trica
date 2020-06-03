package com.trica.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.ProductVO;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertProduct(ProductVO vo) {
		return sqlSession.insert("ProductDAO.insertProduct", vo);
	}
	
	
	
	@Override
	public List<ProductVO> getNewList() {
		return sqlSession.selectList("ProductDAO.getNewList");
	}
	
	@Override
	public List<ProductVO> getAllList() {
		return sqlSession.selectList("ProductDAO.getAllList");
	}
	
	@Override
	public List<ProductVO> getPopularList() {
		return sqlSession.selectList("ProductDAO.getPopularList");
	}
	
	@Override
	public List<ProductVO> getRecommendList() {
		return sqlSession.selectList("ProductDAO.getRecommendList");
	}
}