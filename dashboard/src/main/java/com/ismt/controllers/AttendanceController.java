package com.ismt.controllers;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ismt.Service.StudentService;


@Controller
public class AttendanceController {
	
	@Autowired
	private StudentService servie;
	
	@GetMapping("/attendances")
	public String getAllAttendances( Model model) {
		model.addAttribute("slist",servie.getStudents() );
		return"Attendance";
	   
	}
}
