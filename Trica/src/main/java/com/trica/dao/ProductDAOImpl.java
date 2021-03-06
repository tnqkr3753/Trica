package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
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
	public List<HashMap> getaList(int firstRow, int endRow) {
		System.out.println("getaList 호출 ******************");
		
		HashMap m = new HashMap();
		m.put("firstRow", firstRow);
		m.put("endRow", endRow);
		
		return sqlSession.selectList("ProductDAO.getaList", m);
	}   
	 
	@Override  
	public ProductVO selectProduct(ProductVO vo) {
		return sqlSession.selectOne("ProductDAO.selectProduct", vo);
	}
	
	@Override
	public List<ProductVO> getPopularList() {
		return sqlSession.selectList("ProductDAO.getPopularList");
	}
	
	@Override
	public List<ProductVO> getRecommendList() {
		return sqlSession.selectList("ProductDAO.getRecommendList");
	}
  

	@Override
	public void increaseCount(ProductVO vo) {
		sqlSession.update("ProductDAO.increaseCount", vo);
	}
 

	//상품 수정 
	@Override
	public int modifyProduct(ProductVO vo) {
		System.out.println("===>  ProductMapper modifyProduct() 호출");
		return sqlSession.update("ProductDAO.modifyProduct", vo);
	} 
       
	//상품 삭제
	@Override  
	public int deleteProduct(ProductVO vo) { 
		return sqlSession.delete("ProductDAO.deleteProduct", vo);
	}

  
	//등록상품리스트 
	@Override
	public List<ProductVO> productList() {
		return sqlSession.selectList("ProductDAO.productList");
	}
	
	
	@Override
	public List<ProductVO> getPctList(HashMap hash) {
		System.out.println("---------dao.getPctList호출------------");
		return sqlSession.selectList("ProductDAO.selectPctList", hash);
	}
	
	@Override
	public List<HashMap> countRegPerDay() {
		return sqlSession.selectList("ProductDAO.getRegPerDay");
	}



	@Override
	public int getTotalCount() {
		System.out.println("getTotalCount() 호출 !!!!!!");
		return sqlSession.selectOne("ProductDAO.getTotalCount");
		
	}


}