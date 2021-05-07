package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.repository.WineDao;
import com.javaex.vo.WineVo;

@Controller
public class WineController {

	@Autowired
	WineDao wineDao;

	// 와인 등록
	@RequestMapping(value = "/wineRegist", method = RequestMethod.POST)
	public String regist(@ModelAttribute WineVo wineVo) {
		System.out.println("add");
		System.out.println(wineVo.toString());

		wineDao.insert(wineVo);

		return "winelist/view_admin";
	}

	// 와인 삭제폼
	@RequestMapping(value = "/wineDeleteform")
	public String deleteform() {
		System.out.println("wineDeleteform");
		return "winelist/wineDeleteform";
	}

	// 와인 삭제
	@RequestMapping(value = "/wineDelete", method = RequestMethod.POST)
	public String delete(@ModelAttribute WineVo wineVo) {
		System.out.println("delete");
		wineDao.delete(wineVo);

		return "redirect:/main/index";
	}

}
