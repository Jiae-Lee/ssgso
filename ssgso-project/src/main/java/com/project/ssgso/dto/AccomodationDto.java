package com.project.ssgso.dto;

public class AccomodationDto {
	private int ac_no;
	private String name;
	private String info;
	private String ac_img;
	private Double latitude;
	private Double longitude;
	private String address;
	
	public AccomodationDto() {
		
	}

	public int getAc_no() {
		return ac_no;
	}

	public void setAc_no(int ac_no) {
		this.ac_no = ac_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getAc_img() {
		return ac_img;
	}

	public void setAc_img(String ac_img) {
		this.ac_img = ac_img;
	}
	
	
	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
