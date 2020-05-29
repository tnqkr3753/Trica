package com.trica.vo;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	private String pctNo;
	private int pctStock;
	private String pctName;
	private int pctPrice;
	private String pctIntro;
	private String pctDetail;
	private String pctImgName;
	private Long pctImgSize;
	private String scNo;
	private MultipartFile file;
//	private String bigC;
//	private String smallC;
//	public String getBigC() {
//		return bigC;
//	}
//	public void setBigC(String bigC) {
//		this.bigC = bigC;
//	}
//	public String getSmallC() {
//		return smallC;
//	}
//	public void setSmallC(String smallC) {
//		this.smallC = smallC;
//	}
//	
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
	
public String getScNo() {
		return scNo;
	}
//	public String getScNo() {
//		return bigC+smallC;
//	}
	public void setScNo(String scNo) {
//		this.bigC=String.valueOf(scNo.charAt(0));
//		this.smallC=String.valueOf(scNo.charAt(1));
		this.scNo = scNo;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		if(!file.isEmpty()) {
			this.pctImgName = file.getOriginalFilename(); //원래 파일 경로
			this.pctImgSize  = file.getSize();
			//실제 파일로 저장
			File f = new File("C:\\Users\\KOSMO_25\\git\\Trica\\Trica\\src\\main\\webapp\\resources\\upload\\product\\img\\"+pctImgName);
			try {
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				System.out.println("파일 전송 실패" + e.getMessage());
			}
		}
	}
	
}
