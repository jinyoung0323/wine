package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.WineDao;
import com.javaex.vo.Criteria;
import com.javaex.vo.PageMaker;

@Controller
public class MainController {

	@Autowired
	private WineDao wineDao;

	// 와인 리스트 불러오기
	@RequestMapping(value = "/")
	public ModelAndView list(ModelAndView mav, Criteria cr) {
		mav.addObject("wineList", wineDao.list(cr));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCr(cr);
		pageMaker.setTotalCount(wineDao.listCount());

		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("main/index");

		return mav;
	}
}