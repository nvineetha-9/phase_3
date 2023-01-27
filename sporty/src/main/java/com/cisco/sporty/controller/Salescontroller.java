package com.cisco.sporty.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.time.*;

import com.cisco.sporty.entity.Product;
import com.cisco.sporty.entity.Sales;
import com.cisco.sporty.repository.Salesrepo;

@RestController
public class Salescontroller {
	
	@Autowired
	Salesrepo srepo;
	
	@RequestMapping("addsale/{pid}/{price}")
	public String addsale(@PathVariable("pid") String pid,@PathVariable("price") float price) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd"); 
		Date dt=new Date();
		Sales s=new Sales();
		s.setDate(formatter.format(dt));
		s.setPid(pid);
		s.setPrice(price);
		srepo.save(s);
		return "successfully bought";
	}
	
	@GetMapping("/showsales")
	public ModelAndView getsales(@RequestParam("date") String dt) {
		ModelAndView mv = new ModelAndView("showreport");
		List<Sales> slist=srepo.findBydate(dt);
		mv.addObject("slist",slist);
		System.out.println(slist);
		return mv;
	}
	

}
