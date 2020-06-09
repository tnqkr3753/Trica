package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.SearchDAO;
import com.trica.vo.ProductVO;

@Service("searchService")
public class SearchServiceImpl implements SearchService {
	private int totalRecCount; // 전체 레코드 수
	private int pageTotalCount; // 전체 페이지 수
	private int countPerPage = 6; // 한페이지당 레코드 수

	@Autowired
	SearchDAO searchDAO;

	@Override
	public List<HashMap> getSearchList(ProductVO vo,String pageNum) {
		int pNum=1;
		if(pageNum != null) pNum = Integer.parseInt(pageNum);
		
		int firstRow = (pNum-1)*countPerPage+1;
		int endRow=pNum*countPerPage;
		
		// 전체 레코드를 검색해 온다면
		return searchDAO.getSearchList(vo,firstRow, endRow);
	}
//
//	@Override
//	public List<HashMap> getBigSearch(String bcNo) {
//		return searchDAO.getBigSearch(bcNo);
//	}

	@Override
	public int getTotalCount(String bcNo) {
		totalRecCount = searchDAO.getTotalCount(bcNo);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}

	@Override
	public List<HashMap> getBigSearch(String bcNo,String pageNum) {
		int pNum=1;
		if(pageNum != null) pNum = Integer.parseInt(pageNum);
		
		int firstRow = (pNum-1)*countPerPage+1;
		int endRow=pNum*countPerPage;
		
		// 전체 레코드를 검색해 온다면
		return searchDAO.getBigSearch(bcNo,firstRow, endRow);
	}

	@Override
	public int getSearchCount(ProductVO vo) {
		totalRecCount = searchDAO.getSearchCount(vo);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}

}
