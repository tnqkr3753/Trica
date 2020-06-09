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
		// TODO Auto-generated method stub
		return sqlSession.insert("OrderDAO.insertOrder",vo);
	}

	@Override
	public int insertOrderProduct(OrderProductVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("OrderDAO.insertOrderProduct",vo);
	}

	@Override
	public int insertDelivery(DeliveryVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("OrderDAO.insertDelivery",vo);
	}


}
