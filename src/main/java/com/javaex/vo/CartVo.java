package com.javaex.vo;

public class CartVo {
	
	private int cart_no;			// 장바구니 번호
	private String email;			// 이메일
	private int wine_no;			// 와인번호
	private String wine_name;		// 와인이름
	private int wine_count;			// 와인 갯수
	private int wine_price;			// 와인 가격
	private int wine_total_price;	// 와인 총합 가격

	
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getWine_no() {
		return wine_no;
	}
	public void setWine_no(int wine_no) {
		this.wine_no = wine_no;
	}
	public String getWine_name() {
		return wine_name;
	}
	public void setWine_name(String wine_name) {
		this.wine_name = wine_name;
	}
	public int getWine_count() {
		return wine_count;
	}
	public void setWine_count(int wine_count) {
		this.wine_count = wine_count;
	}
	public int getWine_price() {
		return wine_price;
	}
	public void setWine_price(int wine_price) {
		this.wine_price = wine_price;
	}
	public int getWine_total_price() {
		return wine_total_price;
	}
	public void setWine_total_price(int wine_total_price) {
		this.wine_total_price = wine_total_price;
	}
	
	
	public CartVo(int cart_no, String email, int wine_no, String wine_name, int wine_total_price) {
		super();
		this.cart_no = cart_no;
		this.email = email;
		this.wine_no = wine_no;
		this.wine_name = wine_name;
		this.wine_total_price = wine_total_price;
	}
	public CartVo(int cart_no, String wine_name, int wine_total_price) {
		super();
		this.cart_no = cart_no;
		this.wine_name = wine_name;
		this.wine_total_price = wine_total_price;
	}
	public CartVo(int wine_no, String email) {
		super();
		this.wine_no = wine_no;
		this.email = email;
	}
	public CartVo() {
		super();
	}
	public CartVo(String email) {
		super();
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "CartVo [cart_no=" + cart_no + ", email=" + email + ", wine_no=" + wine_no + ", wine_name=" + wine_name
				+ ", wine_count=" + wine_count + ", wine_price=" + wine_price + ", wine_total_price=" + wine_total_price
				+ "]";
	}
	

	
}
