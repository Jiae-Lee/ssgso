package com.project.ssgso.dto;

public class BookingDto {

	private int book_no;
	private int mem_no;
	private String date_from;
	private String date_to;
	private int pay_no;
	private int room_no;
	
	public int getBook_no() {
		return book_no;
	}
	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getDate_from() {
		return date_from;
	}
	public void setDate_from(String date_from) {
		this.date_from = date_from;
	}
	public String getDate_to() {
		return date_to;
	}
	public void setDate_to(String date_to) {
		this.date_to = date_to;
	}
	public int getPay_no() {
		return pay_no;
	}
	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	
	
	@Override
	public String toString() {
		return "BookingDto [book_no=" + book_no + ", mem_no=" + mem_no + ", date_from=" + date_from + ", date_to="
				+ date_to + ", pay_no=" + pay_no + ", room_no=" + room_no + "]";
	}
	
	
}
