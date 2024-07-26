package com.ismt.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.StudentPostService;
import com.ismt.models.StudentPost;

@RestController
@RequestMapping("/api/student")
public class StudentPostApi {
	
	@Autowired
	private StudentPostService service;
	
	@PostMapping("/post")
	public String postStudentpost(@RequestBody StudentPost stdpost) {
		 service.add(stdpost);
		 return "Student post added successfully!";
	}
	

}
