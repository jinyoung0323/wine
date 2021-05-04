package com.javaex                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           .controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.repository.MainDao;

@Controller
public class MainController {
   
   @Autowired
   private MainDao dao;
   
   @RequestMapping(value="/")
   public String main() {

      return "main/index";
      
      
   }
}
//그럼 한번해볼까 