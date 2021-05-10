package com.javaex.vo;

public class WineVo {
	private int wine_no;				// 와인번호(PK)
	private String wine_name;			// 와인이름
	private int wine_type;				// 와인타입(레드, 화이트, 로제)
	private String wine_country;		// 와인 생산국
	private String reg_date;			// 와인 등록일
	private int wine_price;				// 와인가격
	private int wine_stock;				// 와인재고
	private String wine_image;			// 와인이미지
	private WineDescriptionVo wineDescriptionVo;
	
	public WineVo() {}
	
	

	public WineVo(WineDescriptionVo wineDescriptionVo) {
		super();
		this.wineDescriptionVo = wineDescriptionVo;
	}



	public WineVo(int wine_no, String wine_name, int wine_type, String wine_country, String reg_date) {
		super();
		this.wine_no = wine_no;
		this.wine_name = wine_name;
		this.wine_type = wine_type;
		this.wine_country = wine_country;
		this.reg_date = reg_date;
	}
	
	public WineVo(int wine_no, String wine_name, int wine_type, String wine_country, String reg_date, int wine_price,
			int wine_stock, String wine_image) {
		super();
		this.wine_no = wine_no;
		this.wine_name = wine_name;
		this.wine_type = wine_type;
		this.wine_country = wine_country;
		this.reg_date = reg_date;
		this.wine_price = wine_price;
		this.wine_stock = wine_stock;
		this.wine_image = wine_image;
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

	public int getWine_type() {
		return wine_type;
	}

	public void setWine_type(int wine_type) {
		this.wine_type = wine_type;
	}

	public String getWine_country() {
		return wine_country;
	}

	public void setWine_country(String wine_country) {
		this.wine_country = wine_country;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	

	public int getWine_price() {
		return wine_price;
	}

	public void setWine_price(int wine_price) {
		this.wine_price = wine_price;
	}

	public int getWine_stock() {
		return wine_stock;
	}

	public void setWine_stock(int wine_stock) {
		this.wine_stock = wine_stock;
	}

	public String getWine_image() {
		return wine_image;
	}

	public void setWine_image(String wine_image) {
		this.wine_image = wine_image;
	}
	
	

	public WineDescriptionVo getWineDescriptionVo() {
		return wineDescriptionVo;
	}



	public void setWineDescriptionVo(WineDescriptionVo wineDescriptionVo) {
		this.wineDescriptionVo = wineDescriptionVo;
	}



	@Override
	public String toString() {
		return "WineVo [wine_no=" + wine_no + ", wine_name=" + wine_name + ", wine_type=" + wine_type
				+ ", wine_country=" + wine_country + ", reg_date=" + reg_date + ", wine_price=" + wine_price
				+ ", wine_stock=" + wine_stock + ", wine_image=" + wine_image + "]";
	}

	
	
	
	
}
