package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("chartDAO")
public class ChartDAOImpl implements ChartDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	@Override
	public List<HashMap> getCountPerDay() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ChartDAO.countPerDay");
	}

	@Override
	public List<HashMap> getCountPerCate() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ChartDAO.countPerCate");
	}

	@Override
	public List<HashMap> getSalesPerDay() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ChartDAO.salesPerDay");
	}

}
