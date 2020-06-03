package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.ProductVO;


@Repository("searchDAO")
public class SearchDAOImpl implements SearchDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int selectproduct(ProductVO vo) {
		
		return sqlSession.insert("ProductDAO.selectProduct", vo);
	}

	public List<HashMap> getSearchList(ProductVO vo) {
		System.out.println("====> Mybatis getSearchList() 호출");
		return sqlSession.selectList("SearchDAO.getSearchList", vo);
	}
	
}
