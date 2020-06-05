package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.WishDAO;
import com.trica.vo.WishVO;
@Service("wishService")
public class WishServiceImpl implements WishService {
	@Autowired
	WishDAO wishDAO;
	@Override
	public int insertWish(WishVO vo) {
		return wishDAO.insertWish(vo);
	}
	@Override
	public WishVO selectWish(WishVO vo) {
		return wishDAO.selectWish(vo);
	}
	@Override
	public List<HashMap> selectWishProduct(WishVO vo) {
		return wishDAO.selectWishProduct(vo);
	}
	@Override
	public int deleteWish(WishVO vo) {
		return wishDAO.deleteWish(vo);
	}
	
	
}
