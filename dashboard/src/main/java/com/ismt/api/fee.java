package com.ismt.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.FeeService;
import com.ismt.models.Fee;


@RestController
@RequestMapping("/api/fees")
public class fee {

	@Autowired
	private FeeService service;
	
	 @GetMapping("/student/{studentId}")
	    public List<Fee> getFeesByStudentId(@PathVariable int studentId) {
	        return service.getFeesByStudentId(studentId);
}
}