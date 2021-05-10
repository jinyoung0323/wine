package com.javaex.vo;

public class CartVo {
	
	private int cart_no;
	private String email;
	private int wine_no;
	private String wine_name;
	private int wine_price;

	public String getWine_name() {
		return wine_name;
	}
	public void setWine_name(String wine_name) {
		this.wine_name = wine_name;
	}
	public int getWine_price() {
		return wine_price;
	}
	public void setWine_price(int wine_price) {
		this.wine_price = wine_price;
	}
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
	
	public CartVo(int cart_no, String email, int wine_no, String wine_name, int wine_price) {
		super();
		this.cart_no = cart_no;
		this.email = email;
		this.wine_no = wine_no;
		this.wine_name = wine_name;
		this.wine_price = wine_price;
	}
	public CartVo(int cart_no, String wine_name, int wine_price) {
		super();
		this.cart_no = cart_no;
		this.wine_name = wine_name;
		this.wine_price = wine_price;
	}
	public CartVo(int cart_no, String email) {
		super();
		this.cart_no = cart_no;
		this.email = email;
	}
	public CartVo() {
		super();
	}
	@Override
	public String toString() {
		return "CartVo [cart_no=" + cart_no + ", email=" + email + ", wine_no=" + wine_no + ", wine_name=" + wine_name
				+ ", wine_price=" + wine_price + "]";
	}
	

	
}
