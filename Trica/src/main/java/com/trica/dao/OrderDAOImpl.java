package com.trica.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;
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
	public int decreaseStock(OrderProductVO vo) {
		return sqlSession.update("OrderDAO.decreaseStock", vo);
	}


}
