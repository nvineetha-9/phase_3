package com.cisco.sporty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.sporty.repository.Adminrepo;

@RestController
public class Admincontroller {

	@Autowired
	Adminrepo arepo;

	@RequestMapping("/adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView("adminlogin");
		return mv;
	}

	@RequestMapping("/validate")
	public ModelAndView validate(@RequestParam("aid") String aid, @RequestParam("psw") String psw) {
		if (aid.equals("admin") && psw.equals("admin123")) {
			ModelAndView mv = new ModelAndView("operations");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("adminlogin");
			mv.addObject("message","invalid username and password");
			return mv;
		}
	}

}
