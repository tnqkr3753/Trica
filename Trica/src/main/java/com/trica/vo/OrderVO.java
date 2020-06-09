package com.trica.vo;

import java.util.Date;
import java.util.List;

public class OrderVO {
	private String orderNo;
	private String memberId;
	private Date orderDate;
	private int totalPrice;
	private boolean orderState;
	private String orderRequest;
	@Override
	public String toString() {
		return "OrderVO [orderNo=" + orderNo + ", memberId=" + memberId + ", orderDate=" + orderDate + ", totalPrice="
				+ totalPrice + ", orderState=" + orderState + ", orderRequest=" + orderRequest + "]";
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public boolean isOrderState() {
		return orderState;
	}
	public void setOrderState(boolean orderState) {
		this.orderState = orderState;
	}
	public String getOrderRequest() {
		return orderRequest;
	}
	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}
}
