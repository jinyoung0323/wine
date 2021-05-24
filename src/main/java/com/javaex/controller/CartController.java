package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.dao.CartDao;
import com.javaex.vo.CartVo;
import com.javaex.vo.UserVo;
import com.javaex.vo.WineVo;

@Controller
public class CartController {

	@Autowired
	private CartDao cartDao;

	// 장바구니 리스트 불러오기
	@RequestMapping("/cart")
	public ModelAndView getList(ModelAndView mav) {
		System.out.println(">>> " + this.getClass() + " 호출됨!");

		mav.addObject("cart", cartDao.getList());
		mav.setViewName("cart/list");

		return mav;
	}

	// 장바구니 추가
	@RequestMapping(value = "/cartInsert")
	public String write(@ModelAttribute CartVo cartVo, @RequestParam(value = "wine_no", required = false) int wine_no) {
		System.out.println("cartInsert");
		System.out.println(cartVo.toString());

		cartVo.setWine_no(wine_no);
		cartDao.insert(cartVo);

		return "redirect:/";
	}
 
	// 장바구니 삭제
	@RequestMapping(value = "/cartDelete")
	public String delete(@ModelAttribute CartVo cartVo) {
		System.out.println("delete");
		cartDao.deleteByNo(cartVo);

		return "redirect:/cart";
	}

	// 결제창 이동(장바구니 삭제 + 와인재고 갯수만큼 감소)
	@RequestMapping(value = "/pay")
	public String pay(@ModelAttribute CartVo cartVo,ModelAndView mav, @RequestParam(value = "email")String email) {
		System.out.println("pay");
		
		System.out.println(email);
		
		cartDao.updateWineCount(cartVo);
		
		cartDao.deleteAll(cartVo);

		return "redirect:/";
	}
}