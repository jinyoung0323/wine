package com.javaex.vo;


public class UserVo {
	private String email;			// 사용자 이메일
	private String nick_name;		// 사용자 이름
	private int user_no;			// 사용자 번호
	private String password;		// 사용자 비밀번호
	private String phone_no;		// 사용자 전화번호
	private String birth;			// 사용자 생년월일
	private int grade;				// 사용자 등급
	private String address;			// 사용자 주소
	
	/* 생성자 */
	
	// 디폴트
	public UserVo() {}

	// 전체 생성자
	public UserVo(int user_no, String email, String nick_name,  String password, String phone_no, String birth, int grade, String address	) {
		super();
		this.user_no = user_no;
		this.email = email;
		this.nick_name = nick_name;
		this.password = password;
		this.phone_no = phone_no;
		this.birth = birth;
		this.grade = grade;
		this.address = address;
	}
	
	// address(null 허용)를 제외한 전체 생성자
	public UserVo(int user_no, String email, String nick_name,  String password, String phone_no, String birth, int grade) {
		super();
		this.user_no = user_no;
		this.email = email;
		this.nick_name = nick_name;
		this.password = password;
		this.phone_no = phone_no;
		this.birth = birth;
		this.grade = grade;
	}
	
	// user_no(sequence)를 제외한 전체 생성자
	public UserVo(String email,	String nick_name, String password, String phone_no, String birth, int grade, String address	) {
		super(); 
		this.email = email;
		this.nick_name = nick_name;
		this.password = password;
		this.phone_no = phone_no;
		this.birth = birth;
		this.grade = grade;
		this.address = address;
	}
	
	public UserVo(String nick_name, String password, String phone_no, String address) {
		super(); 
		this.nick_name = nick_name;
		this.password = password;
		this.phone_no = phone_no;
		this.address = address;
	}
	
	public UserVo(String email,	String nick_name, String password, String phone_no, String address) {
		super();
		this.email = email;
		this.nick_name = nick_name;
		this.password = password;
		this.phone_no = phone_no;
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
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
		return "UserVo [email=" + email + ", nick_name=" + nick_name + ", user_no=" + user_no + ", password=" + password
				+ ", phone_no=" + phone_no + ", birth=" + birth + ", grade=" + grade + ", address=" + address + "]";
	}
	
}
