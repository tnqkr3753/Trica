package com.trica.vo;

import java.util.Date;
import java.util.List;

public class OrderVO {
	private String orderNo;
	private String memberId;
	private Date orderDate;
	private int totalPrice;
	private boolean orderState;
	private String deliveryNo;
	private String orderAddress;
	private String getOrderNo() {
		return orderNo;
	}
	private void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	private String getMemberId() {
		return memberId;
	}
	private void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	private Date getOrderDate() {
		return orderDate;
	}
	private void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	private int getTotalPrice() {
		return totalPrice;
	}
	private void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	private boolean isOrderState() {
		return orderState;
	}
	private void setOrderState(boolean orderState) {
		this.orderState = orderState;
	}
	private String getDeliveryNo() {
		return deliveryNo;
	}
	private void setDeliveryNo(String deliveryNo) {
		this.deliveryNo = deliveryNo;
	}
	private String getOrderAddress() {
		return orderAddress;
	}
	private void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
}
