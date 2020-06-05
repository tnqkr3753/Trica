package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.SearchDAO;
import com.trica.vo.ProductVO;

@Service("searchService")
public class SearchServiceImpl implements SearchService {
	@Autowired
	SearchDAO searchDAO;
	@Override
	public List<HashMap> getSearchList(ProductVO vo) {
		return searchDAO.getSearchList(vo);
	}
	 
	@Override
	public List<HashMap> getBigSearch(String bcNo) {
		return searchDAO.getBigSearch(bcNo);
	}
}
