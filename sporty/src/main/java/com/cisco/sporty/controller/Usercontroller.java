package com.cisco.sporty.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.sporty.entity.User;
import com.cisco.sporty.repository.Userrepo;

@RestController
public class Usercontroller {
	
	@Autowired
	Userrepo urepo;
	
	Productcontroller pcon;
	
	@PostMapping("/storeuser")
	public ModelAndView storeuser(@RequestParam("uid") String uid,
			@RequestParam("psw") String psw,
			@RequestParam("age") String age,
			@RequestParam("phno") String phno,
			@RequestParam("gender") String gender) {
		ModelAndView mv = new ModelAndView("signup");
		mv.addObject("message","successfully created continue to login");
		User u=new User();
		u.setUid(uid);
		u.setPassword(psw);
		u.setAge(Integer.parseInt(age));
		u.setPhno(Long.parseLong(phno));
		u.setGender(gender);
		urepo.save(u);
		return mv;
	}
	
	@GetMapping("/getbyid")
	public ModelAndView getbyid(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView("searchuser");
		User ul=urepo.findById(id).get();
		List listoful=new ArrayList<User>();
		listoful.add(ul);
		mv.addObject("ulist", listoful);
		System.out.println(ul);
		return mv;
	}

	@GetMapping("/getusers")
	public ModelAndView getusers() {
		ModelAndView mv = new ModelAndView("searchuser");
		List<User> ul=urepo.findAll();
		mv.addObject("ulist", ul);
		System.out.println(ul);
		return mv;
	}
	@PostMapping("/validateuser")
	public ModelAndView validateuser(@RequestParam("uid") String uid,@RequestParam("psw") String psw) {
		User u=urepo.findById(uid).get();
		if(u.getPassword().equals(psw)) {
			ModelAndView mv = new ModelAndView("userop");
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView("userlogin");
			mv.addObject("message", "invalid username and password");
			return mv;
		}
	}
}
