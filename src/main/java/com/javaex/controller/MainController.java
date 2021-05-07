package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.repository.WineDao;

@Controller
public class MainController {

	@Autowired
	private WineDao wineDao;

	// 와인 리스트 불러오기
	@RequestMapping(value = "/")
	public ModelAndView getList(ModelAndView mav) {
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		mav.addObject("wineList", wineDao.getList());
		mav.setViewName("main/index");

		return mav;
	}
}
