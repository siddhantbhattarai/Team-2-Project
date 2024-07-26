package com.ismt.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ismt.Service.StudentService;

@Controller
public class DashboardController {
	
	@Autowired
	private StudentService service;

	@GetMapping("/dashboard")
	public String getDashboard(Model model) {
		long studentCount = service.countStudents();
		model.addAttribute("studentCount", studentCount); // Add studentCount to the model
		
		return "dashboard"; // Return the name of your Thymeleaf template
	}
	
	@GetMapping("/public")
	public String getDashboard2(Model model) {
		long studentCount = service.countStudents();
		model.addAttribute("studentCount", studentCount); // Add studentCount to the model
		
		return "dashboard2"; // Return the name of your Thymeleaf template
	}
	
	
	@GetMapping("/reject")
	public String getDashboard3(Model model) {
		long studentCount = service.countStudents();
		model.addAttribute("studentCount", studentCount); // Add studentCount to the model
		
		return "dashboard3"; // Return the name of your Thymeleaf template
	
	}
	
	
}
