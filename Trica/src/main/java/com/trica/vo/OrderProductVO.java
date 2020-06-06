package com.trica.vo;

public class OrderProductVO {
	private String pctNo;
	private String orderNo;
	private int orderCount;
	private int orderPrice;
	private String getPctNo() {
		return pctNo;
	}
	private void setPctNo(String pctNo) {
		this.pctNo = pctNo;
	}
	private String getOrderNo() {
		return orderNo;
	}
	private void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	private int getOrderCount() {
		return orderCount;
	}
	private void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	private int getOrderPrice() {
		return orderPrice;
	}
	private void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	
}
