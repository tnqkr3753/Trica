package com.trica.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.OrderDAO;
import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderDAO orderDAO;
	@Override
	public int insertOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		return orderDAO.insertOrder(vo);
	}


	@Override
	public int insertOrderProduct(OrderProductVO vo) {
		return orderDAO.insertOrderProduct(vo);
	}

	@Override
	public int insertDelivery(DeliveryVO vo) {
		return orderDAO.insertDelivery(vo);
	}

}
