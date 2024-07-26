package com.ismt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ismt.Service.FeeService;
import com.ismt.Service.StudentService;
import com.ismt.models.Fee;

@Controller
public class FeeController {
	
	@Autowired
	private FeeService fservice;
	
	@Autowired
	private StudentService sservice;
	
	@GetMapping("/fee")
	public String getfee(Model model) {
		model.addAttribute("slist", sservice.getStudents());
		return"Fee";
	}
	
	@PostMapping("/fee")
	public String postfee(@ModelAttribute Fee fee) {
		fservice.add(fee);
		return"redirect:/fee";
	}

}
