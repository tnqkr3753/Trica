package com.trica.vo;

public class DeliveryVO {
	private String orderNo;
	private String deliverName;
	private String deliverTel;
	private String deliverSubTel;
	private String recipientName;
	@Override
	public String toString() {
		return "DeliveryVO [deliverName=" + deliverName + ", deliverSubTel=" + deliverSubTel + ", deliverTel="
				+ deliverTel + ", orderNo=" + orderNo + ", recipientAddress=" + recipientAddress + ", recipientName="
				+ recipientName + ", recipientSubTel=" + recipientSubTel + ", recipientTel=" + recipientTel + "]";
	}
	private String recipientAddress;
	private String recipientTel;
	private String recipientSubTel;
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getDeliverName() {
		return deliverName;
	}
	public void setDeliverName(String deliverName) {
		this.deliverName = deliverName;
	}
	public String getDeliverTel() {
		return deliverTel;
	}
	public void setDeliverTel(String deliverTel) {
		this.deliverTel = deliverTel;
	}
	public String getDeliverSubTel() {
		return deliverSubTel;
	}
	public void setDeliverSubTel(String deliverSubTel) {
		this.deliverSubTel = deliverSubTel;
	}
	public String getRecipientName() {
		return recipientName;
	}
	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}
	public String getRecipientAddress() {
		return recipientAddress;
	}
	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}
	public String getRecipientTel() {
		return recipientTel;
	}
	public void setRecipientTel(String recipientTel) {
		this.recipientTel = recipientTel;
	}
	public String getRecipientSubTel() {
		return recipientSubTel;
	}
	public void setRecipientSubTel(String recipientSubTel) {
		this.recipientSubTel = recipientSubTel;
	}
	
}
