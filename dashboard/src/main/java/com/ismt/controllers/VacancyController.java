package com.ismt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ismt.Service.vacancyService;
import com.ismt.models.Vacancy;


@Controller
public class VacancyController {

	@Autowired
	private vacancyService service;
	
	@GetMapping("/vacancy")
public String getVacancy(Model model) {
		model.addAttribute("vlist", service.getallVacency());
	return"Vacancy";
}
	
	@PostMapping("/vacancy")
	public String postVacancy(@ModelAttribute Vacancy vacancy) {
		service.add(vacancy);
		return"redirect:/vacancy";
	}
}

