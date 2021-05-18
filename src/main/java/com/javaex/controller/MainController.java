package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.WineDao;
import com.javaex.vo.PageMaker;
import com.javaex.vo.WineVo;

@Controller
public class MainController {

	@Autowired
	private WineDao wineDao;

	 /* <와인 검색 & 타입 & 정렬 기능> */
 
	 /* wine_type : 와인 타입 - 레드, 화이트, 로제 (디폴트 = "")
	 * keyword : 검색 키워드 (디폴트 = "")
	 * sort_type : 정렬 타입 - 날짜, 가나다, 가격 => 오름/내림차순 (디폴트 = "최신순")
	 */
	@RequestMapping("/")
	public ModelAndView getSearch(HttpServletRequest request, ModelAndView mav,
			@RequestParam(value = "wine_type", defaultValue = "") String wine_type,
			@RequestParam(value = "keyword", defaultValue = "") String keyword,
			@RequestParam(value = "sort_type", defaultValue = "reg_date_down") String sort_type,
			WineVo wineVo) {
		
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		wineVo.setKeyword(keyword);
		wineVo.setWine_type(wine_type);
		wineVo.setSort_type(sort_type);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setWineVo(wineVo);

		// wine_type, keyword, sort_type => addObject
		mav.addObject("wine_type", wine_type);
		mav.addObject("keyword", keyword);
		mav.addObject("sort_type", sort_type);

		// 키워드가 null일 때
		if (keyword == null || "".equals(keyword)) {
			
			// wine_type이 null일 때
			if (wine_type == null || "".equals(wine_type)) {
				
				// DAO를 통해 정렬하는 쿼리 수행
				pageMaker.setTotalCount(wineDao.listCount());
				mav.addObject("wineList", wineDao.list(wineVo));
				
			} else {	// wine_type이 null이 아닐 때
				
				// DAO를 통해 와인타입 쿼리 수행
				pageMaker.setTotalCount(wineDao.listCountByType(wineVo));
				mav.addObject("wineList", wineDao.listCateByType(wineVo));
				
			}
		} else {	// 키워드가 null이 아닐 때
			
			// DAO를 통해 검색하는 쿼리 수행
			pageMaker.setTotalCount(wineDao.listCountBySearch(wineVo));
			mav.addObject("wineList", wineDao.getSearchByKeyword(wineVo));
		}
		
		// pageMaker addObject
		mav.addObject("pageMaker", pageMaker);

		mav.setViewName("main/index");

		return mav;
	}
}