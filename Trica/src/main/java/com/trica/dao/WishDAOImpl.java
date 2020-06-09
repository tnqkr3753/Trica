package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.WishVO;
@Repository("wishDAO")
public class WishDAOImpl implements WishDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	@Override
	public int insertWish(WishVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("WishDAO.insertWish",vo);
	}
	@Override
	public WishVO selectWish(WishVO vo) {
		return sqlSession.selectOne("WishDAO.selectWish", vo);
	}
	@Override
	public List<HashMap> selectWishProduct(WishVO vo) {
		return sqlSession.selectList("WishDAO.selectWishProduct",vo);
	}
	@Override
	public int deleteWish(WishVO vo) {
		return sqlSession.delete("WishDAO.deleteWish",vo);
	}
	
	
	
}
