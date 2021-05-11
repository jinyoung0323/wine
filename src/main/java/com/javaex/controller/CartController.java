package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.CartDao;

@Controller
public class CartController {
	
	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("/cart")
	public ModelAndView getList(ModelAndView mav) {
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		mav.addObject("cart", cartDao.getList());
		mav.setViewName("cart/list");

		return mav;
	}

}