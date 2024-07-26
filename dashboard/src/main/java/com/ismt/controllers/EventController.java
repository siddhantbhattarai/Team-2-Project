package com.ismt.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ismt.Service.EventService;
import com.ismt.models.Event;

@Controller
public class EventController {
	
	@Autowired
	private EventService service;
	
	@GetMapping("/event")
	public String getevent(Model model) {
		model.addAttribute("eventlist", service.getallEvent());
		return"Event";
	}
	
	@PostMapping("/event")
	public String postevent(@ModelAttribute Event event) {
		service.eventadd(event);
		return"redirect:/event";
	}

}
