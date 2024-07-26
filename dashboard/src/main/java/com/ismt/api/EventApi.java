package com.ismt.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ismt.Service.EventService;
import com.ismt.models.Event;

@RestController
@RequestMapping("/api/event")
public class EventApi {
	
	@Autowired
	private EventService servie;
	

	@GetMapping("/detail")
	public List<Event> getallNews() {
		return servie.getallEvent();
	}
	

}
