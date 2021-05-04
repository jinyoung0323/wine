package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class DesVO {
	private int wineNo;
	private String wineCompany;
	private int wineAlcohol;
	private int winePrice;
	private int wineStock;
	private String wineImage;
	private String wineDescription;
	private MultipartFile file;

	public int getWineNo() {
		return wineNo;
	}

	public void setWineNo(int wineNo) {
		this.wineNo = wineNo;
	}

	public String getWineCompany() {
		return wineCompany;
	}

	public void setWineCompany(String wineCompany) {
		this.wineCompany = wineCompany;
	}

	public int getWineAlcohol() {
		return wineAlcohol;
	}

	public void setWineAlcohol(int wineAlcohol) {
		this.wineAlcohol = wineAlcohol;
	}

	public int getWinePrice() {
		return winePrice;
	}

	public void setWinePrice(int winePrice) {
		this.winePrice = winePrice;
	}

	public int getWineStock() {
		return wineStock;
	}

	public void setWineStock(int wineStock) {
		this.wineStock = wineStock;
	}

	public String getWineImage() {
		return wineImage;
	}

	public void setWineImage(String wineImage) {
		this.wineImage = wineImage;
	}

	public String getWineDescription() {
		return wineDescription;
	}

	public void setWineDescription(String wineDescription) {
		this.wineDescription = wineDescription;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public DesVO(int wineNo, String wineCompany, int wineAlcohol, int winePrice, int wineStock, String wineImage,
			String wineDescription, MultipartFile file) {
		super();
		this.wineNo = wineNo;
		this.wineCompany = wineCompany;
		this.wineAlcohol = wineAlcohol;
		this.winePrice = winePrice;
		this.wineStock = wineStock;
		this.wineImage = wineImage;
		this.wineDescription = wineDescription;
		this.file = file;
	}
	
	public DesVO() {
		
	}

	@Override
	public String toString() {
		return "DesVO [wineNo=" + wineNo + ", wineCompany=" + wineCompany + ", wineAlcohol=" + wineAlcohol
				+ ", winePrice=" + winePrice + ", wineStock=" + wineStock + ", wineImage=" + wineImage
				+ ", wineDescription=" + wineDescription + ", file=" + file + "]";
	}
	
	

}
