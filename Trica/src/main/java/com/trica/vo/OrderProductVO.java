package com.trica.vo;

public class OrderProductVO {
	private String pctNo;
	private String orderNo;
	private int orderCount;
	private int orderPrice;
	public String getPctNo() {
		return pctNo;
	}
	public void setPctNo(String pctNo) {
		this.pctNo = pctNo;
	}
	public String getOrderNo() {
		return orderNo;
	}
	@Override
	public String toString() {
		return "OrderProductVO [pctNo=" + pctNo + ", orderNo=" + orderNo + ", orderCount=" + orderCount
				+ ", orderPrice=" + orderPrice + "]";
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	
}
