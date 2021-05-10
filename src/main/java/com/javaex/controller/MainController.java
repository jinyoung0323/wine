package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.WineDao;


@Controller
public class MainController {

	@Autowired
	private WineDao wineDao;

	// 와인 리스트 불러오기
	@RequestMapping(value = "/")
	public ModelAndView list(ModelAndView mav) {
		
		mav.addObject("wineList", wineDao.getList());
		mav.setViewName("main/index");

		return mav;
	}

//	// 와인 리스트 불러오기
//	@RequestMapping(value = "/")
//	public ModelAndView list(ModelAndView mav) {
//		System.out.println(">>> " + this.getClass() + " 호출됨!");
//		
//		WineVo wineVo = new WineVo();
//		WineDescriptionVo wd = new WineDescriptionVo();
//		wineVo.setWd(wd);
//		mav.addObject("wineList", wineDao.getList(wd));
//
//		mav.setViewName("main/index");
//
//		return mav;
//	}
}