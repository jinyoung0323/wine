package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.repository.UserDao;
import com.javaex.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;

	// 로그인
	@RequestMapping(value = "login")
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		UserVo authUser = userDao.login(userVo);

		// 세션처리
		if (authUser != null) {
			session.setAttribute("authUser", authUser);
			System.out.println(authUser);
			return "redirect:/";
		} else {
			return "redirect:/";
		}
	}

	// 로그인 되어 있는 정보를 가져온다.
	protected UserVo getAuthUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		return authUser;
	}

}
