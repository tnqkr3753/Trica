package com.trica.vo;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.web.multipart.MultipartFile;
public class BoardVO {
	private String boardNo;
	private String memberId;
	private String boardType;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private int viewCnt;
	private String boardFname;
	private Long boardFsize;
	private String parentBoardNo;
	private int lvl;
	private String dateKor;
	
	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", memberId=" + memberId + ", boardType=" + boardType + ", boardTitle="
				+ boardTitle + ", boardContent=" + boardContent + ", boardDate=" + boardDate + ", viewCnt=" + viewCnt
				+ ", boardFname=" + boardFname + ", boardFsize=" + boardFsize + ", parentBoardNo=" + parentBoardNo
				+ ", lvl=" + lvl + ", dateKor=" + dateKor + ", file=" + file + "]";
	}
	//파일
	MultipartFile file;
	public String getParentBoardNo() {
		return parentBoardNo;
	}
	public void setParentBoardNo(String parentBoardNo) {
		this.parentBoardNo = parentBoardNo;
	}
	public int getLevel() {
		return lvl;
	}
	public void setLevel(int lvl) {
		this.lvl = lvl;
	}
	public String getBoardFname() {
		return boardFname;
	}
	public Long getBoardFsize() {
		return boardFsize;
	}
	public String getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(String boardNo) {
		this.boardNo = boardNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
		SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy.MM.dd HH:mm:ss", Locale.KOREA );
		this.dateKor = formatter.format(boardDate);
	}
	public int getLvl() {
		return lvl;
	}
	public String getDateKor() {
		return dateKor;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		if(!file.isEmpty()) {
			this.boardFname = file.getOriginalFilename(); //원래 파일 경로
			this.boardFsize  = file.getSize();
			//실제 파일로 저장
			File f = new File("C:\\Users\\KOSMO_25\\git\\Trica\\Trica\\src\\main\\webapp\\resources\\upload\\board\\img\\"+boardFname);
			try {
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				System.out.println("파일 전송 실패" + e.getMessage());
			}
		}
	}
}
