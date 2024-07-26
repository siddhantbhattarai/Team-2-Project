package com.ismt.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.vacancyService;
import com.ismt.models.Vacancy;

@RestController
@RequestMapping("/api")
public class VacancyApi {
	@Autowired
	private vacancyService service;
	
	@GetMapping("/vacancy")
	public List<Vacancy> getallVacancy() {
		return service.getallVacency();
	}

}
