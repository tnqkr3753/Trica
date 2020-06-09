package com.trica.vo;

import java.util.List;

public class OrderSubmitVO {
	private List<OrderProductVO> pvoList;
	private OrderVO ovo;
	private DeliveryVO dvo;
	private List<String> indexList;
	public List<String> getIndexList() {
		return indexList;
	}
	public void setIndexList(List<String> indexList) {
		this.indexList = indexList;
	}
	public List<OrderProductVO> getPvoList() {
		return pvoList;
	}
	public void setPvoList(List<OrderProductVO> pvoList) {
		this.pvoList = pvoList;
	}
	public OrderVO getOvo() {
		return ovo;
	}
	public void setOvo(OrderVO ovo) {
		this.ovo = ovo;
	}
	@Override
	public String toString() {
		return "OrderSubmitVO [pvoList=" + pvoList + ", ovo=" + ovo + ", dvo=" + dvo + "]";
	}
	public DeliveryVO getDvo() {
		return dvo;
	}
	public void setDvo(DeliveryVO dvo) {
		this.dvo = dvo;
	}
	
}
