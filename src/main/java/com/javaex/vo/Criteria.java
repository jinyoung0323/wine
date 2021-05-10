package com.javaex.vo;

public class Criteria {
	private int rowStart;		// 시작 row
	private int rowEnd;			// 끝 row
	private int page;			// 페이지
	private int perPageNum;		// 한 페이지 당 갯수

	public Criteria() {
		this.page = 1;
		this.perPageNum = 5;
	}


	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}


	@Override
	public String toString() {
		return "Criteria [rowStart=" + rowStart + ", rowEnd=" + rowEnd + ", page=" + page + ", perPageNum=" + perPageNum
				+ "]";
	}
	

	
	
}
