package com.trica.service;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.ProductVO;

public interface SearchService {
	public List<HashMap> getSearchList(ProductVO vo);
}
