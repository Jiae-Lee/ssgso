package com.project.ssgso.dto;

public class EventBoardDto {

	private int eboard_no; // 번호
	private int eview_cnt;// 조회수
	private String ecreate_date;// 작성일자
	private char eboard_type;// 보드타입
	private String etitle;// 제목
	private String econtent;// 내용
	private String ewriter;// 작성자
	public int getEboard_no() {
		return eboard_no;
	}
	public void setEboard_no(int eboard_no) {
		this.eboard_no = eboard_no;
	}
	public int getEview_cnt() {
		return eview_cnt;
	}
	public void setEview_cnt(int eview_cnt) {
		this.eview_cnt = eview_cnt;
	}
	public String getEcreate_date() {
		return ecreate_date;
	}
	public void setEcreate_date(String ecreate_date) {
		this.ecreate_date = ecreate_date;
	}
	public char getEboard_type() {
		return eboard_type;
	}
	public void setEboard_type(char eboard_type) {
		this.eboard_type = eboard_type;
	}
	public String getEtitle() {
		return etitle;
	}
	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}
	public String getEcontent() {
		return econtent;
	}
	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}
	public String getEwriter() {
		return ewriter;
	}
	public void setEwriter(String ewriter) {
		this.ewriter = ewriter;
	}

}
