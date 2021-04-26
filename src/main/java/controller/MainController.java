package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	/*JBlog 메인 폼 출력*/
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main() {
		
		
		System.out.println("Hello, World!!");
		System.out.println("test");
		
		System.out.println("1111");
		
		System.out.println("dddd");
		
		System.out.println("나다");
		return "main/index";
		
		
	}
}
