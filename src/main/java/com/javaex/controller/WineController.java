package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.WineDao;
import com.javaex.vo.PageMaker;
import com.javaex.vo.WineDescriptionVo;
import com.javaex.vo.WineVo;

@Controller
public class WineController {

	@Autowired
	private WineDao wineDao;

	// 와인 검색
	@RequestMapping("/wineSearch")
	public ModelAndView getSearch(HttpServletRequest request, ModelAndView mav, String keyword, WineVo wineVo) {
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		wineVo.setKeyword(keyword);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setWineVo(wineVo);
		
		pageMaker.setTotalCount(wineDao.listCountBySearch(wineVo));
		mav.addObject("wineList", wineDao.getSearchByKeyword(wineVo));
		
		System.out.println("wineDao.listCountBySearch() : " + pageMaker.getTotalCount());
		
		System.out.println("pageMaker : " + pageMaker);
		
		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("main/index");

		return mav;
	}

	// 와인 리스트 정렬
	@RequestMapping(value = "/cate")
	public ModelAndView cateList(ModelAndView mav,  @RequestParam(value="wine_type", defaultValue = "default")String wine_type,
			WineVo wineVo) {

		PageMaker pageMaker = new PageMaker();
		pageMaker.setWineVo(wineVo);
		
		pageMaker.setTotalCount(wineDao.listCountByType(wine_type));
		mav.addObject("wineList", wineDao.listCateByType(wine_type));
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

	// 상세페이지
	@RequestMapping("/view")
	public ModelAndView view(@RequestParam int wine_no, ModelAndView mav) {
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		// BlogVo blogVo = blogService.getBlog(id);
		WineVo wineVo = wineDao.viewDetail(wine_no);
		System.out.println(wineVo);

		mav.addObject("wineList", wineVo);
		mav.setViewName("winelist/view");

		return mav;
	}

}
