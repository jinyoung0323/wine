package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	// 회원가입 폼
	@RequestMapping(value = "/joinform", method = RequestMethod.GET)
	public String joinForm() {
		return "/user/joinform";
	}

	// 회원가입
	@RequestMapping(value = "/join")
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("join user : " + userVo);
		userDao.insert(userVo);
		return "user/user_js/joinsuccess";
	}

	// 로그인폼
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginForm() {
		return "/user/loginform";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		UserVo User = userDao.login(userVo);

		// 세션처리
		if (User != null) { // 성공
			session.setAttribute("User", User);
			System.out.println("login user : " + User);

			return "user/user_js/loginsuccess";
		} else { // 실패
			return "user/user_js/loginfail";
		}

	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("User");
		session.invalidate();
		System.out.println("logout user");

		return "user/user_js/logoutsuccess";
	}

	// 사용자 수정폼
	@RequestMapping(value = "/modifyform", method = RequestMethod.GET)
	public String modifyform() {
		return "/user/modifyform";
	}

	// 사용자 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(@ModelAttribute UserVo userVo, HttpSession session) {
		userDao.update(userVo);

		UserVo User = userDao.login(userVo);
		// 세션처리
		if (User != null) { // 성공
			session.setAttribute("User", User);
			System.out.println("modify user : " + userVo);
			return "redirect:/";
		} else { // 실패
			return "redirect:/";
		}
	}

}
