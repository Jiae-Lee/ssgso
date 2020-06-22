package com.project.ssgso.dto;

public class RoomDto {
	
	private int room_no;
	private String title;
	private String content;
	private int min_per;
	private int max_per;
	private int price;
	private int ac_no;
	
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
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
	public int getMin_per() {
		return min_per;
	}
	public void setMin_per(int min_per) {
		this.min_per = min_per;
	}
	public int getMax_per() {
		return max_per;
	}
	public void setMax_per(int max_per) {
		this.max_per = max_per;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAc_no() {
		return ac_no;
	}
	public void setAc_no(int ac_no) {
		this.ac_no = ac_no;
	}
}
