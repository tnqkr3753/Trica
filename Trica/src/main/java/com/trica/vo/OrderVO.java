package com.trica.vo;

import java.util.Date;
import java.util.List;

public class OrderVO {
	private List<OrderProductVO> orderProductList;
	private String orderNo;
	private String memberId;
	private Date orderDate;
	private int totalPrice;
	private boolean orderState;
	private String deliveryNo;
	private String orderAddress;
}
