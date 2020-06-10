package com.trica.service;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;

public interface OrderService {
	public int insertOrder(OrderVO vo);
	public int insertOrderProduct(OrderProductVO vo);
	public int insertDelivery(DeliveryVO vo);
	public int getTotalCount(String memberId);
	public List<HashMap> selectOrder(String memberId, String pageNum);
}
