package com.trica.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.OrderDAO;
import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	private int totalRecCount;	// 전체 주문 수
	private int pageTotalCount;	// 전체 페이지 수
	private int countPerPage = 6;	// 한 페이지에 보여줄 주문 수
	
	@Autowired
	OrderDAO orderDAO;
	@Override
	public int insertOrder(OrderVO vo) {
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

	/*
	 * 전체 페이지 수 가져오기
	 */
	@Override
	public int getTotalCount(String memberId) {
		totalRecCount = orderDAO.getTotalCount(memberId);
		pageTotalCount=totalRecCount/countPerPage;
		
		if(totalRecCount % countPerPage > 0) pageTotalCount++;
		
		return pageTotalCount;
	}

	/*
	 *  페이지 번호에 따라 리스트 가져오기
	 */
	@Override
	public List<HashMap> selectOrder(String memberId, String pageNum) {
		int pNum = 1;
		
		if(pageNum != null) pNum = Integer.parseInt(pageNum);
		
		int firstRow = (pNum-1)*countPerPage+1;
		int endRow=pNum*countPerPage;
		
		return orderDAO.selectOrder(memberId, firstRow, endRow);
	}
	

	@Override
	public int decreaseStock(OrderProductVO vo) {
		return orderDAO.decreaseStock(vo);
	}

}
