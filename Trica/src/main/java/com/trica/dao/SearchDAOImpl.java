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

	public List<HashMap> getSearchList(ProductVO vo,int firstRow,int  endRow) {
		System.out.println("====> Mybatis getSearchList() 호출");
		HashMap m=new HashMap();
		m.put("pctName", vo.getPctName());
		m.put("scNo", vo.getScNo());
		m.put("firstRow", firstRow);
		m.put("endRow", endRow);
		return sqlSession.selectList("SearchDAO.getSearchList", m);
	}
	

	@Override
	public int getTotalCount(String bcNo) {
		System.out.println("getTotalCount() 호출");
		return sqlSession.selectOne("SearchDAO.getTotalCount",bcNo);
	}
	
	//검색한 정보에 대한 전체 페이지 수
	@Override
	public int getSearchCount(ProductVO vo) {
		System.out.println("getSearchCount() 호출");
		return sqlSession.selectOne("SearchDAO.getSearchCount",vo);
	}
	
//	@Override
//	public List<HashMap> getBigSearch(String bcNo) {
//		System.out.println("getBigSearch() 호출");
//		return sqlSession.selectList("SearchDAO.getBigSearch", bcNo);
//	}

	@Override
	public List<HashMap> getBigSearch(String bcNo ,int firstRow, int endRow) {
		System.out.println("selectList() 호출");
		HashMap m=new HashMap();
		m.put("bcNo", bcNo);
		m.put("firstRow", firstRow);
		m.put("endRow", endRow);
		return sqlSession.selectList("SearchDAO.selectList",m);
	}

	
}
