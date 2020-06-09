package com.trica.dao;

import java.util.HashMap;
import java.util.List;


import com.trica.vo.ProductVO;

public interface SearchDAO {
	
	public List<HashMap> getSearchList(ProductVO vo,int firstRow,int  endRow);
	public int getTotalCount(String bcNo);
	public int getSearchCount(ProductVO vo);//검색한 전체페이지
//	public List<HashMap> getBigSearch(String bcNo); //페이지 처리 안된거
	public List<HashMap> getBigSearch(String bcNo,int firstRow,int  endRow); //페이지 처리한거
	
}
