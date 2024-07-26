package com.ismt.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ismt.Repository.EventRepo;
import com.ismt.Service.EventService;
import com.ismt.models.Event;

@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	private EventRepo repo;

	@Override
	public void eventadd(Event event) {
		repo.save(event);
		
	}

	@Override
	public List<Event> getallEvent() {
		
		return repo.findAll();
	}

}
