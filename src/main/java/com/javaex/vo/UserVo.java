package com.javaex.vo;


public class UserVo {

	private String email;			// 이메일
	private String nickName;		// 닉네임
	private int userNo;				// 사용자 번호
	private String password;		// 비밀번호
	private String phoneNo;			// 휴대폰번호(01011112222)
	private String birth;			// 생년월일(YYYYMMDD)
	private int grade;				// 사용자, 관리자 
	private String address;			// 주소
	
	public UserVo() {}
	
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

	@Override
	public String toString() {
		return "UserVo [email=" + email + ", nickName=" + nickName + ", userNo=" + userNo + ", password=" + password
				+ ", phoneNo=" + phoneNo + ", birth=" + birth + ", grade=" + grade + ", address=" + address + "]";
	}
	
	
	
}
