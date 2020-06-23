package com.project.ssgso.dto;

public class MemberDto {

	// Variable
	private int mem_no;
	private String member_id;
	private String name;
	private String password;
	private String email;
	private String gender;
	private int grade;
	private String corporate_no;
	private String create_date;


	// Constructor
	public MemberDto() {
	}

	// Method
	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}


	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getCorporate_no() {
		return corporate_no;
	}

	public void setCorporate_no(String corporate_no) {
		this.corporate_no = corporate_no;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	

	@Override
	public String toString() {
		return "MemberDto [mem_no=" + mem_no + ", member_id=" + member_id + ", name=" + name + ", password=" + password + ", email="
				+ email + ", gender=" + gender + ", grade=" + grade + ", corporate_no=" + corporate_no
				+ ", create_date=" + create_date + "]";
	}
}
