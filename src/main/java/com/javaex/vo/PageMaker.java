package com.javaex.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;				// 게시물 총 갯수
	private int startPage;				// 시작페이지
	private int endPage;				// 끝 페이지
	private boolean prev;				// 이전 페이지
	private boolean next;				// 다음 페이지
	private int displayPageNum = 5;		// 5페이지 넘어갈 시 다음, 이전 페이지 나타남
	private WineVo wineVo;				
	
	public void setWineVo(WineVo wineVo) {
		this.wineVo = wineVo;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	public int getTotalCount() {
		return totalCount;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean isPrev() {
		return prev;
	}
	
	public boolean isNext() {
		return next;
	}
	
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	
	public WineVo getWineVo() {
		return wineVo;
	}
	
	
	private void calcData() {
		endPage = (int)(Math.ceil(wineVo.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)wineVo.getPerPageNum()));
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = (startPage == 1) ? false : true;
		next = (endPage * wineVo.getPerPageNum() >= totalCount) ? false : true;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page).queryParam("perPageNum", wineVo.getPerPageNum()).build();
		return uriComponents.toUriString();
	}
}
