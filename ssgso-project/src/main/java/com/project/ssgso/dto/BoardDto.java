package com.project.ssgso.dto;

import javax.xml.crypto.Data;

public class BoardDto {
	
	private int board_no; //번호
	private int view_cnt;//조회수
	private String create_data;//작성일자
	private char board_type;//보드타입
	private String title;//제목
	private String content;//내용
	private String writer;//작성자

	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getView_cnt() {
		return view_cnt;
	}
	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}
	public String getCreate_data() {
		return create_data;
	}
	public void setCreate_data(String create_data) {
		this.create_data = create_data;
	}
	public char getBoard_type() {
		return board_type;
	}
	public void setBoard_type(char board_type) {
		this.board_type = board_type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	


}
