package com.javaex.vo;


public class UserVo {

	private String email;
	private String nickName;
	private int userNo;
	private String password;
	private String phoneNo;
	private String birth;
	private int grade;
	private String address;
	
	public UserVo(String email, String nickName, int userNo, String password, String phoneNo, String birth, int grade,
			String address) {
		super();
		this.email = email;
		this.nickName = nickName;
		this.userNo = userNo;
		this.password = password;
		this.phoneNo = phoneNo;
		this.birth = birth;
		this.grade = grade;
		this.address = address;
	}
	
	public UserVo() {
		
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
