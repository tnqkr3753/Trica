package com.trica.service;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.ProductVO;

public interface SearchService {
	public List<HashMap> getSearchList(ProductVO vo,String pageNum);
//	public List<HashMap> getBigSearch(String bcNo);
	public int getTotalCount(String bcNo);
	public int getSearchCount(ProductVO vo); //검색했을 때 전체 페이지 수 
	public List<HashMap> getBigSearch(String bcNo ,String pageNum);
}
