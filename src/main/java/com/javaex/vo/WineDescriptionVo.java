package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class WineDescriptionVo {
	private int wine_no;					// 와인번호(PK, FK)
	private String wine_company;			// 제조회사
	private int wine_alcohol;			// 알코올도수
	private int wine_price;				// 와인가격
	private int wine_stock;				// 와인재고
	private String wine_image;			// 와인이미지
	private String wine_description;		// 와인 상세설명
	private MultipartFile file;			// 파일 업로드 위한 변수설정

	public WineDescriptionVo() {}

	public WineDescriptionVo(int wine_no, String wine_company, int wine_alcohol, int wine_price, int wine_stock,
			String wine_image, String wine_description, MultipartFile file) {
		super();
		this.wine_no = wine_no;
		this.wine_company = wine_company;
		this.wine_alcohol = wine_alcohol;
		this.wine_price = wine_price;
		this.wine_stock = wine_stock;
		this.wine_image = wine_image;
		this.wine_description = wine_description;
		this.file = file;
	}

	public int getWine_no() {
		return wine_no;
	}

	public void setWine_no(int wine_no) {
		this.wine_no = wine_no;
	}

	public String getWine_company() {
		return wine_company;
	}

	public void setWine_company(String wine_company) {
		this.wine_company = wine_company;
	}

	public int getWine_alcohol() {
		return wine_alcohol;
	}

	public void setWine_alcohol(int wine_alcohol) {
		this.wine_alcohol = wine_alcohol;
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

	public String getWine_description() {
		return wine_description;
	}

	public void setWine_description(String wine_description) {
		this.wine_description = wine_description;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "WineDescriptionVo [wine_no=" + wine_no + ", wine_company=" + wine_company + ", wine_alcohol="
				+ wine_alcohol + ", wine_price=" + wine_price + ", wine_stock=" + wine_stock + ", wine_image="
				+ wine_image + ", wine_description=" + wine_description + ", file=" + file + "]";
	}
	
	

	
	
	

}
