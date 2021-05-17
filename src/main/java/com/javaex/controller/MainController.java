package com.javaex.controller;

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

	// 와인 리스트 불러오기
	@RequestMapping(value = "/")
	public ModelAndView list(ModelAndView mav, WineVo wineVo) {
		mav.addObject("wineList", wineDao.list(wineVo));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setWineVo(wineVo);
		pageMaker.setTotalCount(wineDao.listCount());

		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("main/index");

		return mav;
	}
}