package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.WishVO;

public interface WishDAO {
	public int insertWish(WishVO vo);
	public WishVO selectWish(WishVO vo);
	public List<HashMap> selectWishProduct(WishVO vo);
	public int deleteWish(WishVO vo);
}
