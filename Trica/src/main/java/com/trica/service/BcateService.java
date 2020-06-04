package com.trica.service;

import java.util.HashMap;
import java.util.List;
  
public interface BcateService {

	//mapper 파라미터 hashmap bigcategory num 
	//카테고리 service  
	// s cate- product  
	// count(pct_no) as cnt
	// 조인조건 s.sc_no = product.sc_no
	// s.bc_no = ${bigcate}
	// return hashmap ("cnt")

	public List<HashMap> bcateCount();
	
}
        