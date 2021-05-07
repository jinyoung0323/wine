package com.javaex.vo;

public class WineVo {
	private int wineNo;				// 와인번호(PK)
	private String wineName;		// 와인이름
	private int wineType;			// 와인타입(레드, 화이트, 로즈)
	private String wineCountry;		// 와인 생산국
	private String regDate;			// 와인 등록일
	
	public WineVo() {}

	public WineVo(int wineNo, String wineName, int wineType, String wineCountry, String regDate) {
		super();
		this.wineNo = wineNo;
		this.wineName = wineName;
		this.wineType = wineType;
		this.wineCountry = wineCountry;
		this.regDate = regDate;
	}

	public int getWineNo() {
		return wineNo;
	}

	public void setWineNo(int wineNo) {
		this.wineNo = wineNo;
	}

	public String getWineName() {
		return wineName;
	}

	public void setWineName(String wineName) {
		this.wineName = wineName;
	}

	public int getWineType() {
		return wineType;
	}

	public void setWineType(int wineType) {
		this.wineType = wineType;
	}

	public String getWineCountry() {
		return wineCountry;
	}

	public void setWineCountry(String wineCountry) {
		this.wineCountry = wineCountry;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "WineVo [wineNo=" + wineNo + ", wineName=" + wineName + ", wineType=" + wineType + ", wineCountry="
				+ wineCountry + ", regDate=" + regDate + "]";
	}
	
	
	
}
