package com.trica.service;
 
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.BcateDAO;
 
@Service("bcateService")
public class BcateServiceImpl implements BcateService {

	@Autowired
	private BcateDAO bcateDAO;
	
	//카테고리 count 
	@Override
	public List<HashMap> countBcate() {
		return bcateDAO.countBcate();
	}
	
	
}
       