package com.trica.vo;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private String pctNo;	// 상품코드
	private int pctStock;	// 상품재고
	private String pctName;	// 상품이름
	private int pctPrice;	// 상품가격
	private String pctIntro;	// 상품소개
	private String pctDetail;	// 상품설명
	private String pctImgName;	// 상품이미지 이름
	private Long pctImgSize;	// 상품이미지 크기
	private String scNo;	// 카테고리 넘버
	private MultipartFile file;	// 파일
	private String bigC;	// 큰 카테고리 넘버
	private String smallC;	// 작은 카테고리 넘버
	private String pctRegDate;	// 상품 등록일
	 
	 
	private String dateKor;
	
	public String getPctRegDate() {
		return pctRegDate;
	}
	
	public void setPctRegDate(String pctRegDate) {
		this.pctRegDate = pctRegDate;
	}
	
	public String getBigC() {
		return bigC;
	}
	
	public void setBigC(String bigC) {
		this.bigC = bigC;
	}
	
	public String getSmallC() {
		return smallC;
	}
	
	public void setSmallC(String smallC) {
		this.smallC = smallC;
	}
	
	public String getPctNo() {
		return pctNo;
	}
	
	public void setPctNo(String pctNo) {
		this.pctNo = pctNo;
	}
	
	public int getPctStock() {
		return pctStock;
	}
	
	public void setPctStock(int pctStock) {
		this.pctStock = pctStock;
	}
	
	public String getPctName() {
		return pctName;
	}
	
	public void setPctName(String pctName) {
		this.pctName = pctName;
	}
	
	public int getPctPrice() {
		return pctPrice;
	}
	
	public void setPctPrice(int pctPrice) {
		this.pctPrice = pctPrice;
	}
	
	public String getPctIntro() {
		return pctIntro;
	}
	
	public void setPctIntro(String pctIntro) {
		this.pctIntro = pctIntro;
	}
	
	public String getPctDetail() {
		return pctDetail;
	}
	
	public void setPctDetail(String pctDetail) {
		this.pctDetail = pctDetail;
	}
	
	public String getPctImgName() {
		return pctImgName;
	}
	
	public void setPctImgName(String pctImgName) {
		this.pctImgName = pctImgName;
	}
	
	public Long getPctImgSize() {
		return pctImgSize;
	}
	
	public void setPctImgSize(Long pctImgSize) {
		this.pctImgSize = pctImgSize;
	}
	
	/* public String getScNo() {
		if(bigC==null || smallC==null) {
		return scNo;
		} else {
			return bigC+smallC;
		}
	} */
	
	public String getScNo() {
		return scNo;
	}
	
	public void setScNo(String scNo) {
		// this.bigC=String.valueOf(scNo.charAt(0));
		// this.smallC=String.valueOf(scNo.charAt(1));
		this.scNo = scNo;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(!file.isEmpty()) {
			this.pctImgName = file.getOriginalFilename(); // 원래 파일 경로
			this.pctImgSize  = file.getSize();
			
			// 실제 파일로 저장
			File f = new File("C:\\Users\\KOSMO_22\\git\\Trica\\Trica\\src\\main\\webapp\\resources\\upload\\product\\img\\"+pctImgName);
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				System.out.println("파일 전송 실패 : " + e.getMessage());
			}
		}
	}
}