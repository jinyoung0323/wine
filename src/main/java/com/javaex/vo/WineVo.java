package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class WineVo {
	private int wine_no; 				// 와인번호(PK)
	private String wine_name; 			// 와인이름
	private String wine_type; 			// 와인타입(레드, 화이트, 로제)
	private String wine_country; 		// 와인 생산국
	private String reg_date; 			// 와인 등록일
	private int wine_price; 			// 와인가격
	private int wine_stock; 			// 와인재고
	private String wine_image; 			// 와인이미지
	private String search_type; 		// 검색 타입
	private String keyword; 			// 검색 키워드
	private String sort_type; 		// 정렬 타입
	private String wine_company; 		// 제조회사
	private int wine_alcohol; 			// 알코올도수
	private String wine_description; 	// 와인 상세설명
	private MultipartFile file; 		// 파일 업로드 위한 변수설정
	private int wine_count; 			// 장바구니로 넘어갈 갯수
	private int rowStart;				// 시작 row
	private int rowEnd;					// 종료 row
	private int page;					// 페이지
	private int perPageNum;				// 한 페이지 당 갯수
	private int pageNo;					// 페이지 번호
	private int totalCount;				// 게시글 총 갯수
	private String email;				// 이메일

	/* 생성자 */

	// 디폴트
	public WineVo() {
		this.page = 1;
		this.perPageNum = 4;
	}


	// 와인테이블 생성자
	public WineVo(int wine_no, String wine_name, String wine_type, String wine_country, String reg_date) {
		super();
		this.wine_no = wine_no;
		this.wine_name = wine_name;
		this.wine_type = wine_type;
		this.wine_country = wine_country;
		this.reg_date = reg_date;
	}

	// 관리자 등록 - 와인테이블 및 상세테이블 생성자
	public WineVo(int wine_no, String wine_name, String wine_type, String wine_country, String reg_date, int wine_price,
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

	// 검색 생성자
	public WineVo(String wine_type) {
		super();
		this.wine_type = wine_type;
	}
	
	// 와인재고 감소위한 생성자
	public WineVo(int wine_no, int wine_stock) {
		super();
		this.wine_no = wine_no;
		this.wine_stock = wine_stock;
	}

//	// 정렬 생성자
//	public WineVo(String order_by_type) {
//		super();
//		this.order_by_type = order_by_type;
//	}
	/* Getter, Setter */

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


	public String getWine_type() {
		return wine_type;
	}

	public void setWine_type(String wine_type) {
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

	public String getSearch_type() {
		return search_type;
	}

	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSort_type() {
		return sort_type;
	}

	public void setSort_type(String sort_type) {
		this.sort_type = sort_type;
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

	public int getWine_count() {
		return wine_count;
	}

	public void setWine_count(int wine_count) {
		this.wine_count = wine_count;
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

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	/* toString() */
	@Override
	public String toString() {
		return "WineVo [wine_no=" + wine_no + ", wine_name=" + wine_name + ", wine_type=" + wine_type
				+ ", wine_country=" + wine_country + ", reg_date=" + reg_date + ", wine_price=" + wine_price
				+ ", wine_stock=" + wine_stock + ", wine_image=" + wine_image + ", search_type=" + search_type
				+ ", keyword=" + keyword + ", sort_type=" + sort_type + ", wine_company=" + wine_company
				+ ", wine_alcohol=" + wine_alcohol + ", wine_description=" + wine_description + ", file=" + file
				+ ", wine_count=" + wine_count + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd + ", page=" + page
				+ ", perPageNum=" + perPageNum + ", pageNo=" + pageNo + ", totalCount=" + totalCount + "]";
	}

	
	

}
