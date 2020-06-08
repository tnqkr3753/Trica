package com.trica.service;

import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;

public interface OrderService {
	public int insertOrder(OrderVO vo);
	public int insertOrderProduct(OrderProductVO vo);
	public int insertDelivery(DeliveryVO vo);
}
