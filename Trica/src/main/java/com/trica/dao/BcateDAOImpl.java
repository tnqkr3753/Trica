package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

 
@Repository("bcateDAO")
public class BcateDAOImpl implements BcateDAO {
 
	@Autowired   
	private SqlSessionTemplate mybatis;

	@Override
	public List<HashMap> bcateCount() {
		return mybatis.selectList("BcateDAO.bcateCount");
	}
 
}  
     