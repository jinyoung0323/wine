package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.repository.WineDao;

@Controller
public class WineController {
	
	@Autowired
	WineDao dao;
	
	@RequestMapping(value = "/wineRegist")
	public String regist() {
		return "winelist/view_admin";
	}

}
