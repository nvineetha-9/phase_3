package com.cisco.sporty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.sporty.entity.Product;
import com.cisco.sporty.repository.Productrepo;

@RestController
public class Productcontroller {
	
	@Autowired
	Productrepo prepo;
	
	@PostMapping("/insertpro")
	public ModelAndView validate(@RequestParam("pid") String pid, @RequestParam("pname") String pname,
			@RequestParam("price") String price) {
		ModelAndView mv = new ModelAndView("addproduct");
		Product p=new Product();
		p.setPid(pid);
		p.setPname(pname);
		p.setPrice(Float.parseFloat(price));
		prepo.save(p);
		mv.addObject("message","inserted successfully");
		return mv;
	}
	
	@GetMapping("/getproduct")
	public ModelAndView getproduct(@RequestParam("pname") String pname) {
		ModelAndView mv = new ModelAndView("addproduct");
		List<Product> plist=prepo.findBypname(pname);
		mv.addObject("plist",plist);
		System.out.println(plist);
		return mv;
	}
	
	@GetMapping("/getallprods")
	public ModelAndView getallprods() {
		ModelAndView mv = new ModelAndView("userop");
		List<Product> plist=prepo.findAll();
		mv.addObject("plist",plist);
		System.out.println(plist);
		return mv;
	}

}
