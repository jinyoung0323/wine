package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.WineDao;
import com.javaex.vo.Criteria;
import com.javaex.vo.PageMaker;
import com.javaex.vo.WineDescriptionVo;
import com.javaex.vo.WineVo;

@Controller
public class WineController {

	@Autowired
	private WineDao wineDao;

	// 게시글 검색
	@RequestMapping("/wineSearch")
	public ModelAndView getSearch(HttpServletRequest request, ModelAndView mav, String search_type, String keyword) {
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		mav.addObject("wineList", wineDao.getSearchByKeyword(search_type, keyword));
		System.out.println(wineDao.getSearchByKeyword(search_type, keyword));
		
		mav.setViewName("main/index");

		return mav;
	}

	// 와인 리스트 정렬
	@RequestMapping(value = "/orderByWinelist")
	public ModelAndView orderList(ModelAndView mav, String order_by_type) {

		mav.addObject("wineList", wineDao.getOrderByWinelist(order_by_type));
		mav.setViewName("main/index");

		return mav;
	}

	// 와인 등록폼
	@RequestMapping(value = "/wineRegist")
	public String registForm() {
		System.out.println("add");

		return "winelist/view_admin";
	}

	// 와인 등록
	@RequestMapping(value = "/wineInsert", method = RequestMethod.POST)
	public String regist(@ModelAttribute WineVo wineVo) {
		System.out.println("addWine");

		wineDao.insert(wineVo);

		return "redirect:/";
	}

	// 와인 삭제
	@RequestMapping(value = "/wineDelete", method = RequestMethod.POST)
	public String delete(@ModelAttribute WineVo wineVo) {
		System.out.println("delete");
		wineDao.delete(wineVo);

		return "redirect:/main/index";
	}

}
