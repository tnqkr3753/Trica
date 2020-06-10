package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;
import com.trica.vo.ProductVO;
@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	@Override
	public int insertOrder(OrderVO vo) {
		return sqlSession.insert("OrderDAO.insertOrder",vo);
	}

	@Override
	public int insertOrderProduct(OrderProductVO vo) {
		return sqlSession.insert("OrderDAO.insertOrderProduct",vo);
	}

	@Override
	public int insertDelivery(DeliveryVO vo) {
		return sqlSession.insert("OrderDAO.insertDelivery",vo);
	}

	@Override
	public int getTotalCount(String memberId) {
		System.out.println("getTotalCount() 호출");
		return sqlSession.selectOne("OrderDAO.getTotalCount", memberId);
	}
	
	@Override
	public List<HashMap> selectOrder(String memberId, int firstRow, int endRow) {
		System.out.println("selectOrder() 호출!!!!!");
		HashMap m=new HashMap();
		m.put("firstRow", firstRow);
		m.put("endRow", endRow);
		m.put("memberId", memberId);
		return sqlSession.selectList("OrderDAO.selectOrder", m);
	}
		
	public int decreaseStock(OrderProductVO vo) {
		return sqlSession.update("OrderDAO.decreaseStock", vo);
	}


}
