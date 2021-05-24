package com.javaex.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.WineDao;
import com.javaex.vo.PageMaker;
import com.javaex.vo.WineVo;

@Controller
public class WineController {

	@Autowired
	private WineDao wineDao;

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
	@RequestMapping(value = "/wineDelete")
	public String delete(@ModelAttribute WineVo wineVo) {
		System.out.println("delete");
		wineDao.delete(wineVo);

		return "redirect:/";
	}

	// 상세페이지
	@RequestMapping("/wineView")
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
