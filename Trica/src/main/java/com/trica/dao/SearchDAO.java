package com.trica.dao;

import java.util.HashMap;
import java.util.List;


import com.trica.vo.ProductVO;

public interface SearchDAO {
	
	public List<HashMap> getSearchList(ProductVO vo);
	
}
